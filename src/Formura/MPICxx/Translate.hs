{-# LANGUAGE ConstraintKinds, DeriveFunctor, DeriveFoldable, DeriveTraversable, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, ImplicitParams, LambdaCase, MultiParamTypeClasses, OverloadedStrings, PackageImports, ScopedTypeVariables, TemplateHaskell #-}

module Formura.MPICxx.Translate where

import           Control.Applicative
import           Control.Concurrent(threadDelay)
import qualified Control.Exception as X
import           Control.Lens
import           Control.Monad
import "mtl"     Control.Monad.RWS
import           Data.Char (toUpper, isAlphaNum)
import           Data.Foldable (toList)
import           Data.List ({-zip4,-} isPrefixOf, sort, groupBy)
import qualified Data.Map as M
import           Data.Maybe
import           Data.String
import           Data.String.ToString
import qualified Data.Set as S
import qualified Data.Text as T
import qualified Data.Text.Lens as T
import qualified Data.Text.IO as T
import           System.Directory
import           System.FilePath.Lens
import           System.Process
import           Text.Trifecta (failed, raiseErr)

import           Formura.Utilities (readYamlDef, zipWithFT)
import qualified Formura.Annotation as A
import           Formura.Annotation.Boundary
import           Formura.Annotation.Representation
import           Formura.Compiler
import           Formura.CommandLineOption
import           Formura.Geometry
import           Formura.GlobalEnvironment
import           Formura.Language.Combinator (subFix)
import           Formura.NumericalConfig
import           Formura.OrthotopeMachine.Graph
import           Formura.OrthotopeMachine.TemporalBlocking
import           Formura.Syntax
import           Formura.Vec
import qualified Formura.MPICxx.Language as C
import           Formura.MPICxx.Cut hiding (cut)


newtype VariableName = VariableName C.Src


-- | The struct for generating unique names, and holds already given names.
data NamingState = NamingState
  { _alreadyGivenNames :: S.Set C.Src
  , _alreadyGivenLocalNames :: S.Set C.Src
  , _alreadyDeclaredResourceNames :: S.Set C.Src
  , _freeNameCounter :: Integer
  , _freeLocalNameCounter :: Integer
  , _nodeIDtoLocalName :: M.Map MMNodeID C.Src
  , _loopIndexNames :: Vec C.Src
  , _loopIndexOffset :: Vec Int
  , _loopExtentNames :: Vec C.Src
  }
makeClassy ''NamingState

defaultNamingState = NamingState
  { _alreadyGivenNames = S.empty
  , _alreadyGivenLocalNames = S.empty
  , _alreadyDeclaredResourceNames = S.empty
  , _freeNameCounter = 0
  , _freeLocalNameCounter = 0
  , _nodeIDtoLocalName = M.empty
  , _loopIndexNames = PureVec ""
  , _loopIndexOffset = 0
  , _loopExtentNames = PureVec ""
  }

type MPIPlanSelector = Bool

data TranState = TranState
  { _tranSyntacticState :: CompilerSyntacticState
  , _tsNumericalConfig :: NumericalConfig
  , _tsNamingState :: NamingState
  , _theProgram :: Program
  , _theMMProgram :: MMProgram
  , _theGraph :: MMGraph
  , _tsMPIPlanSelection :: MPIPlanSelector
  , _tsMPIPlanMap :: M.Map MPIPlanSelector MPIPlan
  , _tsCommonStaticBox :: Box
  , _tsCommonOMNodeBox :: Box
  , _tsCxxTemplateWithMacro :: C.Src
  }
makeClassy ''TranState


instance HasCompilerSyntacticState TranState where
  compilerSyntacticState = tranSyntacticState
instance HasNumericalConfig TranState where
  numericalConfig = tsNumericalConfig
instance HasMachineProgram TranState MMInstruction OMNodeType where
  machineProgram = theMMProgram
instance HasNamingState TranState where
  namingState = tsNamingState
instance HasMPIPlan TranState where
  mPIPlan =
    let
      gettr s = fromJust $ M.lookup (s^.tsMPIPlanSelection) (s^.tsMPIPlanMap)
      settr s a = s & tsMPIPlanMap %~ M.insert (s^.tsMPIPlanSelection) a
    in lens gettr settr

data CProgramF a = CProgram { _headerFileContent :: a, _sourceFileContent :: a,
                              _auxFilesContent :: M.Map FilePath a}
                deriving (Eq, Ord, Show, Functor, Foldable, Traversable)
type CProgram = CProgramF C.Src
makeLenses ''CProgramF

tellH :: (MonadWriter CProgram m) => C.Src -> m ()
tellH txt = tell $ CProgram txt "" M.empty
tellC :: (MonadWriter CProgram m) => C.Src -> m ()
tellC txt = tell $ CProgram "" txt M.empty
tellBoth :: (MonadWriter CProgram m) => C.Src -> m ()
tellBoth txt = tell $ CProgram txt txt  M.empty
tellF :: (MonadWriter CProgram m) => FilePath -> C.Src -> m ()
tellF fn txt = tell $ CProgram "" ""  (M.singleton fn txt)

tellHLn :: (MonadWriter CProgram m) => C.Src -> m ()
tellHLn txt = tellH $ txt <> "\n"
tellCLn :: (MonadWriter CProgram m) => C.Src -> m ()
tellCLn txt = tellC $ txt <> "\n"
tellBothLn :: (MonadWriter CProgram m) => C.Src -> m ()
tellBothLn txt = tellBoth $ txt <> "\n"
tellFLn :: (MonadWriter CProgram m) => FilePath -> C.Src -> m ()
tellFLn fn txt = tellF fn $ txt <> "\n"


instance Monoid CProgram where
  mempty = CProgram "" "" M.empty
  mappend (CProgram h1 c1 f1) (CProgram h2 c2 f2) = CProgram (h1 <> h2) (c1 <> c2) (M.unionWith (<>) f1 f2)


type TranM = CompilerMonad GlobalEnvironment CProgram TranState

-- * Parallel code generation

-- | generate new free global name based on given identifier,
--   and prevent further generation of that name
genFreeName :: IdentName -> TranM C.Src
genFreeName = genFreeName' True

-- | generate new free local name based on given identifier,
--   and prevent further generation of that name within current scope
genFreeLocalName :: IdentName -> TranM C.Src
genFreeLocalName = genFreeName' False

-- | base function for giving names
genFreeName' :: Bool -> IdentName -> TranM C.Src
genFreeName' isGlobal ident = do
  aggNames <- use alreadyGivenNames
  aglNames <- use alreadyGivenLocalNames
  let initName = fromString ident
      agNames = aggNames <> aglNames
      nCounter :: Lens' TranState Integer
      nCounter = if isGlobal then freeNameCounter else freeLocalNameCounter
      go = do
        ctr <- use nCounter
        let tmpName = initName <> "_" <> C.show ctr
        if S.member tmpName agNames
          then (nCounter += 1) >> go
          else return tmpName
  givenName <- if S.member initName agNames then go else return initName
  (if isGlobal then alreadyGivenNames else alreadyGivenLocalNames) %= S.insert givenName
  return givenName

-- | read all numerical config from the Formura source program
setNumericalConfig :: WithCommandLineOption => TranM ()
setNumericalConfig = do
  dim <- view dimension
  ivars <- view axesNames
  prog <- use theProgram

  let nc = prog ^. programNumericalConfig
  tsNumericalConfig .= nc

  when (length (nc ^. ncMPIGridShape) /= dim) $
    raiseErr $ failed $ "mpi_grid_shape needs exactly " ++ show dim ++ " elements."
  when (length (nc ^. ncIntraNodeShape) /= dim) $
    raiseErr $ failed $ "intra_node_shape needs exactly " ++ show dim ++ " elements."
  return ()

-- | prepare unique name for everyone
setNamingState :: TranM ()
setNamingState = do
  stateVars <- use omStateSignature
  alreadyGivenNames .= (S.fromList $ map fromString $ M.keys stateVars)

  ans <- view axesNames
  lins <- traverse (genFreeName . ("i"++)) ans
  loopIndexNames .= lins

  luns <- traverse (genFreeName . ("N"++) . map toUpper) ans
  loopExtentNames .= luns

  let nameNode :: MMNode -> TranM MMNode
      nameNode nd = do
        let initName = case A.viewMaybe nd  of
                        Just (SourceName n) -> n
                        _                   -> "g"
        cName <- genFreeName initName
        return $ nd & A.annotation %~ A.set (VariableName cName)

  gr <- use omInitGraph
  gr2 <- flip traverse gr $ nameNode
  omInitGraph .= gr2

  gr <- use omStepGraph
  gr2 <- flip traverse gr $ nameNode
  omStepGraph .= gr2


-- | Generate C type declaration for given language.
genTypeDecl :: IdentName -> TypeExpr -> TranM C.Src
genTypeDecl name typ = case typ of
  ElemType "void" -> return ""
  ElemType "Rational" -> return $ "double " <> fromString name
  ElemType x -> return $ fromString  x <> " " <> fromString name
  GridType _ x -> do
    body <- genTypeDecl name x
    if body == "" then return ""
      else do
        sz <- use ncIntraNodeShape
        let szpt = foldMap (C.brackets . C.show) sz
        return $ body <> szpt
  _ -> raiseErr $ failed $ "Cannot translate type to C: " ++ show typ


elemTypeOfResource :: ResourceT a b -> TranM TypeExpr
elemTypeOfResource (ResourceStatic sname _) = do
  ssMap <- use omStateSignature
  let Just typ = M.lookup sname ssMap
  case typ of
    ElemType _ -> return typ
    GridType _ etyp -> return etyp
elemTypeOfResource (ResourceOMNode nid _) = do
  mmProg <- use omStepGraph
  let Just nd = M.lookup nid mmProg
  case nd ^.nodeType of
    ElemType x -> return $ ElemType x
    GridType _ etyp -> return $ subFix etyp

tellMPIRequestDecl :: C.Src -> TranM ()
tellMPIRequestDecl name = do
  adrn <- use alreadyDeclaredResourceNames
  case S.member name adrn of
    True -> return ()
    False -> do
      alreadyDeclaredResourceNames %= S.insert name
      tellH "extern "
      tellBothLn $ "MPI_Request "<>name<>";\n"
tellResourceDecl :: C.Src -> ResourceT a b -> Box -> TranM ()
tellResourceDecl = tellResourceDecl' False

tellResourceDecl' :: Bool -> C.Src -> ResourceT a b -> Box -> TranM ()
tellResourceDecl' isInClass name rsc box0 = do
  adrn <- use alreadyDeclaredResourceNames
  case S.member name adrn || name == "" of
    True -> return ()
    False -> do
      alreadyDeclaredResourceNames %= S.insert name

      typ <- elemTypeOfResource rsc
      let szpt = foldMap (C.brackets . C.show) sz
          sz = box0 ^.upperVertex - box0 ^. lowerVertex

      decl <- case typ of
        ElemType "void" -> return ""
        ElemType "Rational" -> return $ "double " <> name <> szpt
        ElemType x -> return $ fromString  x <> " " <> name <> szpt
        _ -> raiseErr $ failed $ "Cannot translate type to C: " ++ show typ
      when (decl /= "") $ do

        when isInClass $ do
          tellH decl
          tellHLn ";"
        when (not isInClass) $ do
          tellH "extern "
          tellBoth decl
          tellBothLn ";"


--       case rsc of
--         ResourceStatic _ _ -> do
--             tellH "extern "
--             tellBoth decl
--             tellBothLn ";"
--         _ -> do
--           when (decl /= "") $ tellCLn $ decl <> ";"


tellFacetDecl :: FacetID -> [RidgeID] -> TranM ()
tellFacetDecl f rs = do
  let name = fromString $ toCName f
  tellH $ "struct " <> name <> "{"

  ralloc <- use planRidgeAlloc

  forM_ rs $ \rk -> do
    name <- nameRidgeResource' True rk SendRecv
    let Just box0 = M.lookup rk ralloc
    tellResourceDecl' True name (rk ^. ridgeDelta) box0

  tellH "};"

  tellH $ "extern struct " <> name <> " " <> name <> "_Send;"
  tellH $ "extern struct " <> name <> " " <> name <> "_Recv;"
  tellC $ "struct " <> name <> " " <> name <> "_Send;"
  tellC $ "struct " <> name <> " " <> name <> "_Recv;"
  return ()


toCName :: Show a => a -> IdentName
toCName a = postfix $ fix $ go False $ prefix $ show a
  where
    go _ [] = []
    go b (x:xs) = case isAlphaNum x of
      True -> x : go False xs
      False -> if b then go b xs else '_' : go True xs

    postfix :: IdentName -> IdentName
    postfix = reverse . dropWhile (=='_') . reverse

    prefix :: IdentName -> IdentName
    prefix = T.packed %~ (T.replace "-" "m")

    fix :: IdentName -> IdentName
    fix = T.packed %~ (T.replace "ResourceOMNode" "Om" .
                       T.replace "ResourceStatic" "St" .
                      T.replace "IRank" "r".
                      T.replace "ridgeDelta_" "".
                      T.replace "MPIRank" "".
                      T.replace "RidgeID_ridgeDeltaMPI_MPIRank" "Ridge" .
                      T.replace "facetIRSrc_IRank" "src" .
                      T.replace "facetIRDest_IRank" "dest" .
                      T.replace "FacetID_facetDeltaMPI_" "Facet"
                      )

-- | Give name to Resources
nameArrayResource :: (ResourceT () IRank) -> TranM C.Src
nameArrayResource rsc = case rsc of
  ResourceStatic sn _ -> do
    let ret = fromString sn
    planResourceNames %= M.insert rsc ret
    return ret
  _ -> do
    sharing <- use planResourceSharing
    dict <- use planResourceNames
    sdict <- use planSharedResourceNames
    ret <- case M.lookup rsc sharing of
      Nothing -> return "" -- These are OMNode for Store instruction; do not need array decl
      Just rsid -> do
        ret <- case M.lookup rsid sdict of
          Just ret -> return ret
          Nothing -> do
            genFreeName $ "Rsc" ++ show (fromResourceSharingID rsid)
        planSharedResourceNames %= M.insert rsid ret
        return ret
    planResourceNames %= M.insert rsc ret
    return ret

nameRidgeResource :: RidgeID -> SendOrRecv -> TranM C.Src
nameRidgeResource = nameRidgeResource' False

nameRidgeResource' :: Bool -> RidgeID -> SendOrRecv -> TranM C.Src
nameRidgeResource' isInClass r sr0  = do
  dict <- use planRidgeNames
  fdict <- use planFacetAssignment
  prefix <- if not (doesRidgeNeedMPI r) || isInClass
            then return ""
            else do
    let Just f = M.lookup r fdict
    fname <- nameFacet f sr0
    return $ fname <> "."

  let (sr1, suffix) = (SendRecv, "")
--   let (sr1, suffix) = case doesRidgeNeedMPI r of
--         True  -> (sr0, "_" ++ show sr0)
--         False -> (SendRecv, "")
  case M.lookup (r,sr1) dict of
    Just ret -> return $ prefix <> ret
    Nothing -> do
      ret <- genFreeName $ toCName r ++ suffix
      planRidgeNames %= M.insert (r,sr1) ret
      return $ prefix <> ret


nameFacetRequest :: FacetID -> TranM C.Src
nameFacetRequest f  = do
  dict <- use planMPIRequestNames
  case M.lookup f dict of
    Just ret -> return ret
    Nothing -> do
      ret <- genFreeName $ "req_" ++ toCName f
      planMPIRequestNames %= M.insert f ret
      return ret


nameDeltaMPIRank :: MPIRank -> C.Src
nameDeltaMPIRank r = "mpi_rank_" <> fromString (toCName r)

nameFacet :: FacetID -> SendOrRecv -> TranM C.Src
nameFacet f sr = do
  let name = fromString $ toCName f
  case sr of
    SendRecv -> return $ name
    _        -> return $ name <> "_" <> C.show sr


-- | Generate Declaration for State Arrays
tellArrayDecls :: TranM ()
tellArrayDecls = do
  aalloc <- use planArrayAlloc
  commonBox <- use planSharedResourceExtent
  let szpt = foldMap (C.brackets . C.show) (drop 1 $ toList sz)
      sz = commonBox ^.upperVertex - commonBox ^. lowerVertex

  tellHLn $ "typedef double " <> C.raw rscSfcTypename <> szpt <> ";"
  forM_ (M.toList aalloc) $ \(rsc, box0) -> do
    name <- nameArrayResource rsc
    let box1 = case rsc of
          ResourceOMNode _ _ -> commonBox
          _ -> box0
    tellResourceDecl name rsc box1

  falloc <- use planFacetAlloc
  forM_ (M.toList falloc) $ \(fr@(f, rs)) -> do
    tellFacetDecl f rs
    name <- nameFacetRequest f
    tellMPIRequestDecl name


  ralloc <- use planRidgeAlloc
  forM_ (M.toList ralloc) $ \(rk@(RidgeID _ rsc), box0) -> do
    when (not $ doesRidgeNeedMPI rk) $ do
      name <- nameRidgeResource rk SendRecv
      tellResourceDecl name rsc box0


-- | Generate Declarations for intermediate variables
tellIntermediateVariables :: TranM ()
tellIntermediateVariables = do
  g1 <- use omInitGraph
  g2 <- use omStepGraph
  forM_ [g1, g2] $ \gr -> do
    forM_ (M.toList gr) $ \(_, node) -> do
      let typ = subFix $ node ^. nodeType
          Just (VariableName vname) = A.viewMaybe node
      decl <- genTypeDecl (toString vname) typ
      when (decl /= "") $ tellCLn $ "static " <> decl <> ";"

-- | lookup node by its index
lookupNode :: OMNodeID -> TranM MMNode
lookupNode i = do
  g <- use theGraph
  case M.lookup i g of
   Nothing -> raiseErr $ failed $ "out-of-bound node reference: #" ++ show i
   Just n -> do
     case A.viewMaybe n of
        Just meta -> compilerFocus %= (meta <|>)
        Nothing -> return ()
     return n


nPlusK :: C.Src -> Int -> C.Src
nPlusK i d = i <> "+" <> C.parens (C.parameter "int" d)
--- nPlusK i d | d == 0 = i
---            | d <  0 = i <> C.show d
---            | otherwise = i <> "+" <> C.show d


-- | generate bindings, and the final expression that contains the result of evaluation.

genMMInstruction :: (?ncOpts :: [String]) => IRank -> MMInstruction -> TranM (C.Src, C.Src)
genMMInstruction ir0 mminst = do
  axvars <- fmap fromString <$> view axesNames

  indNames <- use loopIndexNames
  indOffset <- use loopIndexOffset -- indNames + indOffset = real addr
  arrayDict <- use planArrayAlloc
  resourceDict <- use planResourceNames


  let
    -- how to access physical coordinate indNames + indOffset
    -- in array allocated with margin box0
    accAtMargin :: Box -> Vec Int -> C.Src
    accAtMargin box0 vi = accAt (indOffset + vi - (box0 ^. lowerVertex))

    accAt :: Vec Int -> C.Src
    accAt v = foldMap C.brackets $ nPlusK  <$> indNames <*> v


  alreadyGivenLocalNames .= S.empty
  freeLocalNameCounter .= 0
  nodeIDtoLocalName .= M.empty

  let refCount :: MMNodeID -> Int
      refCount nid = fromMaybe 0 $ M.lookup nid refCntMap

      refCntMap :: M.Map MMNodeID Int
      refCntMap = M.unionsWith (+) $
        concat $
        map (map (flip M.singleton 1) . genRefCnt . _nodeInst) $
        M.elems mminst

      genRefCnt :: MicroInstruction -> [MMNodeID]
      genRefCnt (Imm _) = []
      genRefCnt (Uniop _ a) = [a]
      genRefCnt (Binop _ a b) = [a,b]
      genRefCnt (Triop _ a b c) = [a,b,c]
      genRefCnt (Naryop "<%" xs) = xs ++ xs
      genRefCnt (Naryop _ xs) = xs
      genRefCnt (Store _ x) = [x]
      genRefCnt (LoadIndex _) = []
      genRefCnt (LoadExtent _) = []
      genRefCnt (LoadCursor _ _) = []
      genRefCnt (LoadCursorStatic _ _) = []

      doesBind :: MMNodeID -> Bool
      doesBind nid = doesBind' (refCount nid) (fromJust (M.lookup nid mminst) ^. nodeInst)

      doesBind' :: Int -> MicroInstruction -> Bool
      doesBind' _ (Imm _) = False
      doesBind' _ (Store _ x) = False
      doesBind' n _ = n >= 1 -- TODO : Implement CSE and then reduce n


  txts <- forM (M.toList mminst) $ \(nid0, Node inst microTyp _) -> do
    microTypDecl <- genTypeDecl "" (subFix microTyp)
    let thisEq :: C.Src -> TranM C.Src
        thisEq code =
          case doesBind nid0 of
            True ->  do
              thisName <- genFreeLocalName "a"
              nodeIDtoLocalName %= M.insert nid0 thisName
              return $ microTypDecl <> " " <> thisName <> "=" <> code <> ";\n"
            False -> do
              nodeIDtoLocalName %= M.insert nid0 code
              return ""

        query :: MMNodeID -> TranM C.Src
        query nid1 = do
          nmap <- use nodeIDtoLocalName
          case M.lookup nid1 nmap of
            Just vname -> return vname
            Nothing -> raiseErr $ failed $ "genExpr: missing graph node " ++ show nid1

    case inst of
      LoadCursorStatic vi name -> do
        let key  = ResourceStatic name () :: ArrayResourceKey
        let Just abox = M.lookup key arrayDict
            Just rscName = M.lookup key resourceDict

        thisEq $ rscName <> accAtMargin abox vi
      LoadCursor vi nid -> do
        node <- lookupNode nid
        let Just abox = M.lookup key arrayDict
            Just rscName0 = M.lookup key resourceDict
            key = ResourceOMNode nid ir0
            rscName :: C.Src
            rscName = C.typedHole rscPtrTypename (C.toText rscName0)
        case node ^. nodeType of
          ElemType _ -> thisEq $ rscName
          _ -> thisEq $ rscName <> accAtMargin abox vi
      Imm r -> thisEq $ C.show (realToFrac r :: Double)
      Uniop op a -> do
        a_code <- query a
        if "external-call/" `isPrefixOf` op
          then thisEq $ C.parens $ fromString (T.packed %~ T.replace "external-call/" "" $ op) <> C.parens a_code
          else thisEq $ C.parens $ fromString op <> a_code
      Binop op a b -> do
        a_code <- query a
        b_code <- query b
        case op of
          "**" -> thisEq $ ("pow"<>) $ C.parens $ a_code <> "," <> b_code
          _ -> thisEq $ C.parens $ a_code <> fromString op <> b_code
      Triop "ite" a b c -> do
        a_code <- query a
        b_code <- query b
        c_code <- query c
        thisEq $ C.parens $ a_code <> "?" <> b_code <> ":" <> c_code
      Naryop op xs -> do
        xs_code <- mapM query xs
        let chain fname cs = foldr1 (\a b -> fname <> C.parens (a <> "," <> b) ) cs
        case op of
          ">?" -> thisEq $ chain "fmax" xs_code
          "<?" -> thisEq $ chain "fmin" xs_code
          "<%" -> thisEq $ chain "fmin" ["0.0", chain "fmax" xs_code] <> "+" <>
                           chain "fmax" ["0.0", chain "fmin" xs_code]
          _ -> raiseErr $ failed $ "unsupported N-ary operator: " ++ show op
      LoadIndex ax -> do
        let ofs_i = "navi.offset_" <> i
            i = toList axvars !! ax
            ix= toList indNames !! ax
        thisEq $ C.parens $ nPlusK (ofs_i <> "+" <> ix) (toList indOffset !! ax)

      Store _ x -> do
        x_code <- query x
        thisEq x_code
      x -> raiseErr $ failed $ "mpicxx codegen unimplemented for keyword: " ++ show x

  nmap <- use nodeIDtoLocalName
  let (tailID, _) = M.findMax mminst
      Just tailName = M.lookup tailID nmap
  return $ (C.unwords txts, tailName)


ompEveryLoopPragma :: (?ncOpts :: [String]) => Int -> C.Src
ompEveryLoopPragma n
  | "omp-collapse" `elem` ?ncOpts = "#pragma omp for collapse(" <> C.show n <> ")"
  | otherwise                 = ""

-- | generate a formura function body.

genComputation :: (?ncOpts :: [String]) => (IRank, OMNodeID) -> ArrayResourceKey -> TranM C.Src
genComputation (ir0, nid0) destRsc0 = do
  dim <- view dimension
  ivars <- use loopIndexNames
  regionDict <- use planRegionAlloc
  arrayDict <- use planArrayAlloc
  stepGraph <- use omStepGraph

  let
      regionBox :: Box
      marginBox :: Box
      Just regionBox = M.lookup (ir0, nid0) regionDict
      Just marginBox = M.lookup destRsc0 arrayDict

      loopFroms :: Vec Int
      loopFroms = regionBox^.lowerVertex - marginBox^.lowerVertex

      loopTos :: Vec Int
      loopTos = regionBox^.upperVertex - marginBox^.lowerVertex

      mmInst :: MMInstruction
      Just (Node mmInst typ annot) = M.lookup nid0 stepGraph

  loopIndexOffset .= marginBox^. lowerVertex

  systemOffset0 <- use planSystemOffset

  let
    genGrid useSystemOffset lhsName2 = do
      let openLoops =
            [ C.unwords
              ["for (int ", i, "=", C.parameter "int" l ,";", i,  "<", C.parameter "int" h, ";++", i, "){"]
            | (i,(l,h)) <- (toList ivars) `zip`
              zip (toList loopFroms) (toList loopTos)]
          closeLoops =
            ["}" | _ <- toList ivars]

      (letBs,rhs) <- genMMInstruction ir0 mmInst

      let bodyExpr = lhsName2 <> foldMap C.brackets ivarExpr <> "=" <> rhs <> ";"
          ivarExpr
            | useSystemOffset = nPlusK <$> ivars <*> negate systemOffset0
            | otherwise       = ivars

      return $ C.potentialSubroutine $ C.unlines $
        [ompEveryLoopPragma $ dim-1] ++
        openLoops ++ [letBs,bodyExpr] ++ closeLoops


  case typ of
    ElemType "void" ->
      case mmInstTail mmInst of
        Store n _ -> do
          lhsName <- nameArrayResource (ResourceStatic n ())
          genGrid True lhsName
        _ -> return "// void"
    GridType _ typ -> do
      lhsName <- nameArrayResource (ResourceOMNode nid0 ir0)
      genGrid False (C.typedHole rscPtrTypename (C.toText lhsName))

    _ -> do
      return $ fromString $  "// dunno how gen " ++ show mmInst


-- | generate a staging/unstaging code

genStagingCode :: (?ncOpts :: [String]) => Bool -> RidgeID -> TranM C.Src
genStagingCode isStaging rid = do
  dim <- view dimension
  ridgeDict <- use planRidgeAlloc
  arrDict   <- use planArrayAlloc
  intraShape <- use ncIntraNodeShape

  let Just box0 = M.lookup rid ridgeDict
      src :: ArrayResourceKey
      src = case rid of
        RidgeID _ (ResourceOMNode nid (irS,irD)) -> ResourceOMNode nid (if isStaging then irS else irD)
        RidgeID _ (ResourceStatic sn ())  -> ResourceStatic sn ()
      Just box1 = M.lookup src arrDict

      MPIRank mpivec = rid ^. ridgeDeltaMPI
  arrName <- nameArrayResource src
  rdgNameSend <- nameRidgeResource rid Send
  rdgNameRecv <- nameRidgeResource rid Recv
  ivars <- use loopIndexNames
  let offset :: Vec Int
      offset = box0^.lowerVertex

      loopFroms :: Vec Int
      loopFroms = box0^.lowerVertex - offset

      loopTos :: Vec Int
      loopTos = box0^.upperVertex - offset

      otherOffset :: Vec Int
      otherOffset = offset - box1^.lowerVertex
        - (if isStaging then  mpivec * intraShape else 0)

  let openLoops =
        [ C.unwords
          ["for (int ", i, "=", C.show l ,";", i,  "<", C.show h, ";++", i, "){"]
        | (i,(l,h)) <- (toList ivars) `zip`
          zip (toList loopFroms) (toList loopTos)]
      closeLoops =
        ["}" | _ <- toList ivars]


      rdgName = if isStaging then rdgNameSend else rdgNameRecv
      rdgTerm = rdgName <> foldMap C.brackets ivars
      arrTerm = arrName  <> foldMap C.brackets (liftVec2 nPlusK ivars otherOffset)

      body
        | isStaging = rdgTerm <> "=" <> arrTerm
        | otherwise = arrTerm <> "=" <> rdgTerm



  return $ ompEveryLoopPragma dim <> "\n" <>
    C.unlines openLoops <> body <> ";" <> C.unlines closeLoops

genMPISendRecvCode :: FacetID -> TranM C.Src
genMPISendRecvCode f = do
  reqName <- nameFacetRequest f
  facetNameSend <- nameFacet f Send
  facetNameRecv <- nameFacet f Recv
  facetTypeName <- nameFacet f SendRecv
  mpiTagDict <- use planFacetMPITag


  let
      dmpi = f ^. facetDeltaMPI
      mpiIsendIrecv :: C.Src
      mpiIsendIrecv = C.unwords $
          [ "MPI_Irecv( (void*) &" <> facetNameRecv, ","
          , "sizeof(struct " <> facetTypeName <>  ") ,"
          , "MPI_BYTE,"
          , "navi->" <> nameDeltaMPIRank dmpi <> ","
          , let Just t = M.lookup f mpiTagDict in C.show t, ","
          , "navi->mpi_comm,"
          , "&" <> reqName <> " );\n"]
          ++
          [ "MPI_Isend( (void*) &" <> facetNameSend, ","
          , "sizeof(struct " <> facetTypeName <>  ") ,"
          , "MPI_BYTE,"
          , "navi->" <> nameDeltaMPIRank (negate dmpi) <> ","
          , let Just t = M.lookup f mpiTagDict in C.show t, ","
          , "navi->mpi_comm,"
          , "&" <> reqName <> " );\n"]
  return mpiIsendIrecv

genMPIWaitCode :: FacetID -> TranM C.Src
genMPIWaitCode f = do
  reqName <- nameFacetRequest f
  let
      dmpi = f ^. facetDeltaMPI
      mpiWait :: C.Src
      mpiWait = C.unwords $
          ["MPI_Wait(&" <> reqName <>  ",MPI_STATUS_IGNORE);\n"]
  return mpiWait


-- | generate a distributed program
genDistributedProgram :: (?ncOpts :: [String]) => [DistributedInst] -> TranM C.Src
genDistributedProgram insts0 = do
  stepGraph <- use omStepGraph
  theGraph .= stepGraph

  let insts1 = filter (not . isNop) insts0
      insts2 = grp [] $ insts1
  when (insts1 /= concat insts2) $
    raiseErr $ failed $ "Detected instruction order mismatch!"

  bodies <- mapM (mapM go2) $ insts2
  ps <- mapM genCall bodies


  return $  mconcat ps
    where
      isNop (FreeResource _) = True
      isNop _ = False

      sticks :: DistributedInst -> DistributedInst -> Bool
      sticks | "stick-all-comp" `elem` ?ncOpts = sticksB
             | "stick-single-comp" `elem` ?ncOpts = sticksA
             | otherwise                       = sticksB

      sticksA :: DistributedInst -> DistributedInst -> Bool
      sticksA (Unstage _) (Unstage _ ) = True
      sticksA (Unstage _) (Computation _ _ ) = True
      sticksA (Computation _ _ ) (Stage _) = True
      sticksA (Stage _) (Stage _) = True
      sticksA _ _ = False

      sticksB :: DistributedInst -> DistributedInst -> Bool
      sticksB a b =
        let isComp (CommunicationWait _) = False
            isComp (CommunicationSendRecv _) = False
            isComp _ = True
        in isComp a && isComp b



      grp :: [DistributedInst] -> [DistributedInst] -> [[DistributedInst]]
      grp accum [] = [reverse accum]
      grp [] (x:xs) = grp [x] xs
      grp accum@(a:aa) (x:xs)
        | sticks a x = grp (x:accum) xs
        | otherwise  = reverse accum : grp [] (x:xs)


      go2 :: DistributedInst -> TranM (DistributedInst, C.Src)
      go2 i = do
        j <- go i
        return (i,j)

      剔算 = "knockout-computation"   `elem` ?ncOpts
      剔通 = "knockout-communication" `elem` ?ncOpts

      knockout :: Bool -> TranM C.Src -> TranM C.Src
      knockout flag m = do
        t <- m
        return $ if flag then "" else t

      go :: DistributedInst -> TranM C.Src
      go (Computation cmp destRsc) = knockout 剔算 $ genComputation cmp destRsc
      go (Unstage rid)             = knockout 剔算 $ genStagingCode False rid
      go (Stage rid)               = knockout 剔算 $ genStagingCode True rid
      go (FreeResource _)          = knockout 剔算 $ return ""
      go (CommunicationSendRecv f) = knockout 剔通 $ genMPISendRecvCode f
      go (CommunicationWait f)     = knockout 剔通 $ genMPIWaitCode f

      genCall :: [(DistributedInst, C.Src)] -> TranM C.Src
      genCall instPairs = do
        let body = map snd instPairs
            isGenerateFunction = case map fst instPairs of
              [(CommunicationWait     _)] -> False
              [(CommunicationSendRecv _)] -> False
              _                           -> True

        case isGenerateFunction of
          True -> do
            funName <- genFreeName "Formura_internal"
            tellH $ "void "<> funName <> "();\n"
            tellF (toString $  funName <> ".c") $ C.unlines $
              ["void "<> funName <> "(){"]
              ++ (if "omp" `elem` ?ncOpts then ["#pragma omp parallel\n{"] else [])
              ++ body
              ++ (if "omp" `elem` ?ncOpts then ["}"] else [])
              ++ ["}"]
            return $ funName <> "();\n"
          False -> do
            return $ C.unlines $ body

-- | Let the plans collaborate

collaboratePlans :: TranM ()
collaboratePlans = do
  plans0 <- use tsMPIPlanMap

  let commonStaticBox :: Box
      commonStaticBox = foldr1 (|||)
        [ b
        | p <- M.elems plans0
        , (ResourceStatic snName (), b)  <- M.toList $ p ^. planArrayAlloc
        ]

      newPlans = M.map rewritePlan plans0

      rewritePlan :: MPIPlan -> MPIPlan
      rewritePlan p = p
        & planArrayAlloc %~ M.mapWithKey go
        -- & planSharedResourceExtent .~ commonRscBox -- TODO: Flipping the comment of this line changes the behavior.

      go (ResourceStatic snName ()) _ = commonStaticBox
      go _ b = b

      commonRscBox = foldr1 (|||)
        [ p ^. planSharedResourceExtent
        | p <- M.elems plans0]
  tsCommonStaticBox .= commonStaticBox
  tsMPIPlanMap .= newPlans


-- | The main translation logic
tellProgram :: WithCommandLineOption => TranM ()
tellProgram = do
  setNumericalConfig
  setNamingState

  nc <- use tsNumericalConfig
  let ?ncOpts = nc ^. ncOptionStrings

  mpiGrid0 <- use ncMPIGridShape
  mmprog <- use theMMProgram
  (ivars :: Vec C.Src) <- fmap fromString <$> view axesNames
  intraExtents <- use ncIntraNodeShape

  let cxxTemplateWithMacro :: C.Src
      cxxTemplateWithMacro = cxxTemplate
  tsCxxTemplateWithMacro .= cxxTemplateWithMacro

  tsMPIPlanSelection .= False
  plan <- liftIO $ makePlan nc mmprog
  mPIPlan .= plan

  tsMPIPlanSelection .= True
  plan <- liftIO $ makePlan (nc & ncWallInverted .~ Just True) mmprog
  mPIPlan .= plan

  collaboratePlans

  tellH $ C.unlines
    [ ""
    , "#pragma once"
    , "#ifdef __cplusplus"
    , "extern \"C\""
    , "{"
    , "#endif"
    ]



  tellH $ C.unlines ["#include <mpi.h>"]
  tellC $ cxxTemplateWithMacro

  tellBoth "\n\n"
  tellH $ C.unlines
        [ "#define " <> nx <> "  " <> C.show (i*g)
        | (x,i,g) <- zip3 (toList ivars) (toList intraExtents) (toList mpiGrid0)
        , let nx = "N" <> (fromString $ map toUpper $ toString x)
        ]

  tsMPIPlanSelection .= False
  tellArrayDecls
  srmap0 <- use planSharedResourceNames
  tsMPIPlanSelection .= True
  planSharedResourceNames .= srmap0 -- share the shared resource among plans
  tellArrayDecls


  tellBoth "\n"

  allRidges0 <- use planRidgeAlloc
  let deltaMPIs :: [MPIRank]
      deltaMPIs = S.toList $ S.fromList $ concat [ [dmpi, negate dmpi]
        | rdg <- M.keys allRidges0
        , let dmpi = rdg ^. ridgeDeltaMPI]


  tellHLn $ "struct Formura_Navigator {"
  tellHLn $ "int time_step;"
  forM_ ivars $ \i -> do
    tellHLn $ "int lower_" <> i <> ";"
    tellHLn $ "int upper_" <> i <> ";"
    tellHLn $ "int offset_" <> i <> ";"
  tellHLn $ "MPI_Comm mpi_comm;"
  tellHLn $ "int mpi_my_rank;"
  forM_ deltaMPIs $ \r -> do
    tellHLn $ "int " <> nameDeltaMPIRank r <> ";"
  tellHLn $ "};"

  tellH "extern struct Formura_Navigator navi;"
  tellC "struct Formura_Navigator navi;"

  tellBoth "\n\n"

  tellCLn $ "void Formura_decode_mpi_rank (int r" <> C.unwords[", int *i" <> x | x<-toList ivars] <>  "){"
  tellCLn "int s=r;"
  forM_ (zip (reverse $ toList ivars) (reverse $ toList mpiGrid0)) $ \(x, g) -> do
    tellCLn $ "*i" <> x <> "=s%" <> C.show g <> ";"
    tellCLn $ "s=s/" <> C.show g <> ";"
  tellCLn "}"

  tellCLn $ "int Formura_encode_mpi_rank (" <> C.intercalate "," [" int i" <> x | x<-toList ivars] <>  "){"
  tellCLn "int s = 0;"
  forM_ (zip (toList ivars) (toList mpiGrid0)) $ \(x, ig) -> do
    let g=C.show ig
    tellCLn $ "s *= " <>g<>";"
    tellCLn $ "s += (i"<>x<>"%"<>g<>"+"<>g<>")%"<>g<>";"
  tellCLn "return s;}"

  tellBoth "int Formura_Init (struct Formura_Navigator *navi, MPI_Comm comm)"
  tellH ";"



  csb0 <- use tsCommonStaticBox
  let mpiivars = fmap ("i"<>) ivars
      lower_offset = negate $ csb0 ^.lowerVertex
  tellCLn "{"
  tellCLn $ "int " <> C.intercalate "," (toList mpiivars) <> ";"
  tellCLn $ "navi->mpi_comm = comm;"
  tellCLn $ "{int r; MPI_Comm_rank(comm,&r);navi->mpi_my_rank = r;}"
  tellCLn $ "Formura_decode_mpi_rank( navi->mpi_my_rank" <> C.unwords [ ", &" <> x| x<- toList mpiivars]  <> ");"
  forM_ deltaMPIs $ \r@(MPIRank rv) -> do
    let terms = zipWith nPlusK (toList mpiivars) (toList rv)
    tellC $ "navi->" <> nameDeltaMPIRank r <> "="
    tellCLn $ "Formura_encode_mpi_rank( " <> C.intercalate "," terms  <> ");"
  tellCLn "navi->time_step=0;"
  forM_ (zip3 (toList ivars) (toList intraExtents) (toList lower_offset)) $ \(x, e, o) -> do
    tellCLn $ "navi->offset_" <> x <> "=" <> "i"<> x <> "*"<>C.show e <> "-" <> C.show o <> ";"
    tellCLn $ "navi->lower_" <> x <> "=" <> C.show o<>";"
    tellCLn $ "navi->upper_" <> x <> "=" <> C.show o <> "+"<>C.show e <> ";"
  tellCLn "return 0;}"



  tellBoth "\n\n"


  cprogcon <- forM [False, True] $ \ mps -> do
    tsMPIPlanSelection .= mps
    dProg <- use planDistributedProgram
    genDistributedProgram dProg

  tellH $ "/*INSERT SUBROUTINES HERE*/\n"

  monitorInterval0 <- use ncMonitorInterval
  temporalBlockingInterval0 <- use ncTemporalBlockingInterval
  timeStepVarName <- genFreeName "timestep"


  when ((monitorInterval0`mod`(2*temporalBlockingInterval0))/=0) $
    liftIO $ print "Monitor interval must be multiple of (2 * temporal blocking interval)"
  let monitorInterval2 = head $ filter (\x -> x`mod`(2*temporalBlockingInterval0)==0)[monitorInterval0 ..]

  let openTimeLoop = "for(int " <> timeStepVarName <> "=0;" <>
                     timeStepVarName <> "<"
                     <> C.show (monitorInterval2`div`(2*temporalBlockingInterval0))
                     <> ";" <> "++" <> timeStepVarName <>  "){"
      closeTimeLoop = "}"

  tellBoth "int Formura_Forward (struct Formura_Navigator *navi)"
  tellH ";"

  tellC $ C.unlines
    [ "{"
    , openTimeLoop
    , C.unlines [cprogcon!!0,"/* HALFWAYS */" , cprogcon!!1]
    , closeTimeLoop
    , "navi->time_step += "  <> C.show monitorInterval2  <> ";"
    , "return 0;}"
    ]


  tellH $ C.unlines
    [ ""
    , "#ifdef __cplusplus"
    , "}"
    , "#endif"
    ]

useSubroutineCalls :: WithCommandLineOption => M.Map C.Src String -> CProgram -> IO CProgram
useSubroutineCalls subroutineMap cprog0 =
  traverse (useSubroutineInSrc subroutineMap) cprog0

useSubroutineInSrc :: WithCommandLineOption => M.Map C.Src String -> C.Src -> IO C.Src
useSubroutineInSrc subroutineMap (C.Src xs) = C.Src <$> mapM go xs
  where
    go :: C.Word -> IO C.Word
    go x@(C.Raw _) = return x
    go x@(C.Hole _) = return x
    go (C.PotentialSubroutine pssrc) = do
      let tmpl = C.template pssrc
          Just funName = M.lookup tmpl subroutineMap
          argList :: [T.Text]
          argList = [(argN ^. C.holeExpr) | argN <-toList pssrc]

      return $ C.Raw $ fromString funName <> "(" <> T.intercalate "," argList <> ");\n"

joinSubroutines :: WithCommandLineOption => CProgram -> IO CProgram
joinSubroutines cprog0 = do
  when (?commandLineOption ^. verbose) $ do
    putStrLn $ "## Subroutine Analysis"
    when (elem "show-subroutines" $ ?commandLineOption ^. auxFlags) $ do
       forM_ (zip [1..] subs1) $ \(i, ss) -> do
         forM_ (zip [1..] ss) $ \(j, s) -> do
           putStrLn $ "# Subroutine group" ++ show i ++ ": member " ++ show j
           T.putStrLn $ C.pretty s
           putStrLn $ show $ C.template s
           print $ sum $ map fromEnum $ show $ C.template s
    putStrLn $ "Found " ++ show (length subs0) ++ " subroutines."
    putStrLn $ "Found " ++ show (length subs1) ++ " subroutine groups."
    forM_ (zip [1..] subs1) $ \(i, ss) -> do
      let C.Src xs = head ss
          cnt (C.Hole _) = 1
          cnt _ = 0
      print ("Count of typed holes #",i, sum $ map cnt xs)
      -- forM_ (take 2 ss) $ T.putStrLn . C.pretty

  cprog1 <- useSubroutineCalls subroutineNameMap cprog0

  return $ cprog1
    & headerFileContent %~ (C.replace "/*INSERT SUBROUTINES HERE*/" hxxSubroutineDecls)
    & auxFilesContent %~ (M.union auxSubroutineDefs)
    where
      subs0 :: [C.Src]
      subs0 = foldMap getSub cprog0

      getSub :: C.Src -> [C.Src]
      getSub (C.Src xs) = xs >>= toSub

      toSub :: C.Word -> [C.Src]
      toSub (C.PotentialSubroutine s) = [s]
      toSub _ = []

      -- (subroutine template, the list of codes that uses the subroutine)
      submap1 = M.unionsWith (++)
        [ M.singleton (C.template s) [s] | s <- subs0]

      subs1 :: [[C.Src]]
      subs1 = M.elems $ submap1

      subTemplates :: [C.Src]
      subTemplates = M.keys submap1

      -- map a Potential Subroutine template to its subroutine name
      subroutineNameMap :: M.Map C.Src String
      subroutineNameMap = M.fromList
        [(tmpl, "Formura_subroutine_" ++ show i) | (i,tmpl) <- zip [0..] subTemplates]


      argvNames :: [C.Src]
      argvNames = ["argx" <> C.show i | i <- [0..]]

      genSubroutine :: String -> C.Src -> (C.Src, C.Src)
      genSubroutine fname tmpl = let
        header = "void " <> fromString fname <> "(" <> C.intercalate "," argvList <> ")"
        argvList = [C.raw (h ^. C.holeType) <> " " <>  argN | (h, argN) <- zip (toList tmpl) argvNames]
        sbody :: C.Src
        sbody = zipWithFT (\arg hole -> hole & C.holeExpr .~ C.toText arg) argvNames tmpl
        in (header <> ";", header <> C.braces sbody)

      subroutineCodes :: [(String, C.Src, C.Src)]
      subroutineCodes =
        [ (fnBody ++ ".c", hxx, cxx)
        | (tmpl, fnBody) <- M.toList subroutineNameMap
        , let (hxx,cxx) = genSubroutine fnBody tmpl]

      hxxSubroutineDecls :: C.Src
      hxxSubroutineDecls = C.unlines [ hc ^. _2 | hc <- subroutineCodes]

      auxSubroutineDefs :: M.Map FilePath C.Src
      auxSubroutineDefs = M.fromList [ (hc ^. _1, hc ^. _3) | hc <- subroutineCodes]

genCxxFiles :: WithCommandLineOption => Program -> MMProgram -> IO ()
genCxxFiles formuraProg mmProg0 = do
  let
    nc = formuraProg ^. programNumericalConfig

    tbFoldingNumber = nc ^. ncTemporalBlockingInterval

    mmProgTB = temporalBlocking tbFoldingNumber mmProg0

    tranState0 = TranState
      { _tranSyntacticState = defaultCompilerSyntacticState{ _compilerStage = "C++ code generation"}
      , _tsNamingState = defaultNamingState
      , _theProgram = formuraProg
      , _theMMProgram = mmProgTB
      , _tsNumericalConfig = nc
      , _theGraph = M.empty
      , _tsMPIPlanSelection = False
      , _tsMPIPlanMap = M.empty
      , _tsCommonStaticBox = error "_tsCommonStaticBox is unset"
      , _tsCxxTemplateWithMacro = error "_tsCxxTemplateWithMacro is unset"
      }


  (_, tranState1 , cprog0)
    <- runCompilerRight tellProgram
       (mmProgTB ^. omGlobalEnvironment)
       tranState0

  (CProgram hxxContent cxxContent auxFilesContent) <-
    if (elem "no-subroutine" $ tranState1 ^. ncOptionStrings) then return cprog0
    else joinSubroutines cprog0

  createDirectoryIfMissing True (cxxFilePath ^. directory)

  T.writeFile hxxFilePath $ C.toText hxxContent
  T.writeFile cxxFilePath $ C.toText cxxContent

  let funcs = cluster [] $ M.elems auxFilesContent
      cluster :: [C.Src] -> [C.Src] -> [C.Src]
      cluster accum [] = reverse accum
      cluster [] (x:xs) = cluster [x] xs
      cluster (ac:acs) (x:xs)
        | ac /= "" && C.length (ac<>x) > 64000 = cluster ("":ac:acs)  (x:xs)
        | otherwise                            = cluster (ac <> x : acs) xs

      writeAuxFile i con = do
        let fn = cxxFileBodyPath ++ "_internal_" ++ show i ++ ".c"
        T.writeFile fn $ C.toText $ (tranState1 ^. tsCxxTemplateWithMacro) <> con
        return fn

  auxFilePaths <- zipWithM writeAuxFile [0..] funcs

  let wait = ?commandLineOption ^. sleepAfterGen
  when (wait>0) $ threadDelay (1000000 * wait)


  mapM_ indent ([hxxFilePath, cxxFilePath] ++ auxFilePaths)
  where
    indent fn = X.handle ignore $ callProcess "indent" ["-gnu", "-i2", "-nut","-br", "-nlp","-ip0","-l80", fn]

    ignore :: X.SomeException -> IO ()
    ignore _ = return ()


cxxTemplate ::  WithCommandLineOption => C.Src
cxxTemplate = C.unlines
  [ ""
  , "#include <mpi.h>"
  , "#include <math.h>"
  , "#include <stdbool.h>"
  , "#include \"" <> fromString hxxFileName <> "\""
  , ""
  ]

rscPtrTypename :: T.Text
rscPtrTypename = rscSfcTypename <> " * __restrict "

rscSfcTypename :: T.Text
rscSfcTypename = "rsc_surface"
