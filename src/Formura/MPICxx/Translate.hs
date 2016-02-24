{-# LANGUAGE ConstraintKinds, FlexibleContexts, FlexibleInstances, ImplicitParams, LambdaCase, MultiParamTypeClasses, OverloadedStrings, PackageImports, TemplateHaskell #-}

module Formura.MPICxx.Translate where

import           Control.Applicative
import qualified Control.Exception as X
import           Control.Lens
import           Control.Monad
import "mtl"     Control.Monad.RWS
import           Data.Char (toUpper, isAlphaNum)
import           Data.Foldable (toList)
import qualified Data.Map as M
import           Data.Maybe
import qualified Data.Set as S
import qualified Data.Text as T
import qualified Data.Text.Lens as T
import qualified Data.Text.IO as T
import qualified Data.Yaml as Y
import           System.Directory
import           System.FilePath.Lens
import           System.Process
import           Text.Trifecta (failed, raiseErr)


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
import           Formura.Syntax
import           Formura.Vec
import           Formura.MPICxx.Cut hiding (cut)

showC :: Show a => a -> T.Text
showC = T.pack . show

parens :: T.Text -> T.Text
parens x = "(" <> x <> ")"

brackets :: T.Text -> T.Text
brackets x = "[" <> x <> "]"

braces :: T.Text -> T.Text
braces x = "{" <> x <> "}"

newtype VariableName = VariableName T.Text


-- | The struct for generating unique names, and holds already given names.
data NamingState = NamingState
  { _alreadyGivenNames :: S.Set T.Text
  , _alreadyGivenLocalNames :: S.Set T.Text
  , _alreadyDeclaredResourceNames :: S.Set T.Text
  , _freeNameCounter :: Integer
  , _freeLocalNameCounter :: Integer
  , _nodeIDtoLocalName :: M.Map MMNodeID T.Text
  , _loopIndexNames :: Vec T.Text
  , _loopIndexOffset :: Vec Int
  , _loopExtentNames :: Vec T.Text
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

data CProgram = CProgram { _headerFileContent :: T.Text, _sourceFileContent :: T.Text}
                deriving (Eq, Ord, Show)
makeLenses ''CProgram

tellH :: (MonadWriter CProgram m) => T.Text -> m ()
tellH txt = tell $ CProgram txt ""
tellC :: (MonadWriter CProgram m) => T.Text -> m ()
tellC txt = tell $ CProgram "" txt
tellBoth :: (MonadWriter CProgram m) => T.Text -> m ()
tellBoth txt = tell $ CProgram txt txt

tellHLn :: (MonadWriter CProgram m) => T.Text -> m ()
tellHLn txt = tell $ CProgram (txt <> "\n") ""
tellCLn :: (MonadWriter CProgram m) => T.Text -> m ()
tellCLn txt = tell $ CProgram "" (txt <> "\n")
tellBothLn :: (MonadWriter CProgram m) => T.Text -> m ()
tellBothLn txt = tell $ CProgram (txt <> "\n")(txt <> "\n")



instance Monoid CProgram where
  mempty = CProgram "" ""
  mappend (CProgram h1 c1) (CProgram h2 c2) = CProgram (h1 <> h2) (c1 <> c2)


type TranM = CompilerMonad GlobalEnvironment CProgram TranState

-- * Parallel code generation

-- | generate new free global name based on given identifier,
--   and prevent further generation of that name
genFreeName :: IdentName -> TranM T.Text
genFreeName = genFreeName' True

-- | generate new free local name based on given identifier,
--   and prevent further generation of that name within current scope
genFreeLocalName :: IdentName -> TranM T.Text
genFreeLocalName = genFreeName' False

-- | base function for giving names
genFreeName' :: Bool -> IdentName -> TranM T.Text
genFreeName' isGlobal ident = do
  aggNames <- use alreadyGivenNames
  aglNames <- use alreadyGivenLocalNames
  let initName = T.pack ident
      agNames = aggNames <> aglNames
      nCounter :: Lens' TranState Integer
      nCounter = if isGlobal then freeNameCounter else freeLocalNameCounter
      go = do
        ctr <- use nCounter
        let tmpName = initName <> "_" <> showC ctr
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

  mnc <- liftIO $ Y.decodeFile ncFilePath
  nc <- case mnc of
     Nothing -> raiseErr $ failed $ "cannot parse .nc file: " ++ show ncFilePath
     Just x -> return x

  tsNumericalConfig .= nc


  when (length (nc ^. ncMPIGridShape) /= dim) $
    raiseErr $ failed $ "mpi_grid_shape need exactly " ++ show dim ++ " elements."
  when (length (nc ^. ncIntraNodeShape) /= dim) $
    raiseErr $ failed $ "intra_node_shape need exactly " ++ show dim ++ " elements."
  return ()

-- | prepare unique name for everyone
setNamingState :: TranM ()
setNamingState = do
  stateVars <- use omStateSignature
  alreadyGivenNames .= (S.fromList $ map T.pack $ M.keys stateVars)

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
genTypeDecl :: IdentName -> TypeExpr -> TranM T.Text
genTypeDecl name typ = case typ of
  ElemType "void" -> return ""
  ElemType "Rational" -> return $ "double " <> T.pack name
  ElemType x -> return $ T.pack  x <> " " <> T.pack name
  GridType _ x -> do
    body <- genTypeDecl name x
    if body == "" then return ""
      else do
        sz <- use ncIntraNodeShape
        let szpt = foldMap (brackets . showC) sz
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


tellResourceDecl :: T.Text -> ResourceT a b -> Box -> TranM ()
tellResourceDecl name rsc box0 = do
  adrn <- use alreadyDeclaredResourceNames
  case S.member name adrn of
    True -> return ()
    False -> do
      alreadyDeclaredResourceNames %= S.insert name

      typ <- elemTypeOfResource rsc
      let szpt = foldMap (brackets . showC) sz
          sz = box0 ^.upperVertex - box0 ^. lowerVertex

      decl <- case typ of
        ElemType "void" -> return ""
        ElemType "Rational" -> return $ "double " <> name <> szpt
        ElemType x -> return $ T.pack  x <> " " <> name <> szpt
        _ -> raiseErr $ failed $ "Cannot translate type to C: " ++ show typ
      case rsc of
        ResourceStatic _ _ -> do
            tellH "extern "
            tellBoth decl
            tellBothLn ";"
        _ -> do
          when (decl /= "") $ tellCLn $ decl <> ";"



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
                      T.replace "RidgeID_ridgeDeltaMPI_MPIRank" "Ridge"
                      )


-- | Give name to Resources
nameArrayResource :: (ResourceT () IRank) -> TranM T.Text
nameArrayResource rsc = case rsc of
  ResourceStatic sn _ -> do
    let ret = T.pack sn
    planResourceNames %= M.insert rsc ret
    return ret
  _ -> do
    dict <- use planResourceNames
    case M.lookup rsc dict of
      Just ret -> return ret
      Nothing -> do
        ret <- genFreeName $ toCName rsc
        planResourceNames %= M.insert rsc ret
        return ret


nameRidgeResource :: RidgeID -> TranM T.Text
nameRidgeResource r = do
  dict <- use planRidgeNames
  case M.lookup r dict of
    Just ret -> return ret
    Nothing -> do
      ret <- genFreeName $ toCName r
      planRidgeNames %= M.insert r ret
      return ret


-- | Generate Declaration for State Arrays
tellArrayDecls :: TranM ()
tellArrayDecls = do
  aalloc <- use planArrayAlloc
  forM_ (M.toList aalloc) $ \(rsc, box0) -> do
    name <- nameArrayResource rsc
    tellResourceDecl name rsc box0
  ralloc <- use planRidgeAlloc
  forM_ (M.toList ralloc) $ \(rk@(RidgeID _ rsc), box0) -> do
    name <- nameRidgeResource rk
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
      decl <- genTypeDecl (T.unpack vname) typ
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


-- | generate bindings, and the final expression that contains the result of evaluation.

genMMInstruction :: IRank -> MMInstruction -> TranM (T.Text, T.Text)
genMMInstruction ir0 mminst = do
  indNames <- use loopIndexNames
  indOffset <- use loopIndexOffset -- indNames + indOffset = real addr
  arrayDict <- use planArrayAlloc
  resourceDict <- use planResourceNames


  let
    -- how to access physical coordinate indNames + indOffset
    -- in array allocated with margin box0
    accAtMargin :: Box -> Vec Int -> T.Text
    accAtMargin box0 vi = accAt (indOffset + vi - (box0 ^. lowerVertex))

    accAt :: Vec Int -> T.Text
    accAt v = foldMap brackets $ kutukeru  <$> indNames <*> v
    kutukeru i d | d == 0 = i
                 | d <  0 = i <> showC d
                 | otherwise = i <> "+" <> showC d


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
    let thisEq :: T.Text -> TranM T.Text
        thisEq code =
          case doesBind nid0 of
            True ->  do
              thisName <- genFreeLocalName "a"
              nodeIDtoLocalName %= M.insert nid0 thisName
              return $ microTypDecl <> " " <> thisName <> "=" <> code <> ";\n"
            False -> do
              nodeIDtoLocalName %= M.insert nid0 code
              return ""

        query :: MMNodeID -> TranM T.Text
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
      Imm r -> thisEq $ showC (realToFrac r :: Double)
      Uniop op a -> do
        a_code <- query a
        thisEq $ parens $ T.pack op <> a_code
      Binop op a b -> do
        a_code <- query a
        b_code <- query b
        case op of
          "**" -> thisEq $ ("pow"<>) $ parens $ a_code <> "," <> b_code
          _ -> thisEq $ parens $ a_code <> T.pack op <> b_code
      Triop "ite" a b c -> do
        a_code <- query a
        b_code <- query b
        c_code <- query c
        thisEq $ parens $ a_code <> "?" <> b_code <> ":" <> c_code
      Naryop op xs -> do
        xs_code <- mapM query xs
        let chain fname cs = foldr1 (\a b -> fname <> parens (a <> "," <> b) ) cs
        case op of
          ">?" -> thisEq $ chain "fmax" xs_code
          "<?" -> thisEq $ chain "fmin" xs_code
          "<%" -> thisEq $ chain "fmin" ["0.0", chain "fmax" xs_code] <> "+" <>
                           chain "fmax" ["0.0", chain "fmin" xs_code]
          _ -> raiseErr $ failed $ "unexpected N-ary operator: " ++ show op

      LoadCursor vi nid -> do
        node <- lookupNode nid
        let Just abox = M.lookup key arrayDict
            Just rscName = M.lookup key resourceDict
            key = ResourceOMNode nid ir0
        case node ^. nodeType of
          ElemType _ -> thisEq $ rscName
          _ -> thisEq $ rscName <> accAtMargin abox vi
      Store _ x -> do
        x_code <- query x
        thisEq x_code
      x -> raiseErr $ failed $ "mpicxx codegen unimplemented for keyword: " ++ show x

  nmap <- use nodeIDtoLocalName
  let (tailID, _) = M.findMax mminst
      Just tailName = M.lookup tailID nmap
  return $ (T.unwords txts, tailName)


-- | generate a formura function body.

genComputation :: (IRank, OMNodeID) -> ArrayResourceKey -> TranM T.Text
genComputation (ir0, nid0) destRsc0 = do
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
            [ T.unwords
              ["for (int ", i, "=", showC l ,";", i,  "<", showC h, ";++", i, "){"]
            | (i,(l,h)) <- (toList ivars) `zip`
              zip (toList loopFroms) (toList loopTos)]
          closeLoops =
            ["}" | _ <- toList ivars]

      (letBs,rhs) <- genMMInstruction ir0 mmInst

      let bodyExpr = lhsName2 <> foldMap brackets ivarExpr <> "=" <> rhs <> ";"
          ivarExpr
            | useSystemOffset = (\i d -> i <> "+" <> showC d) <$> ivars <*> negate systemOffset0
            | otherwise       = ivars

      return $ T.unlines $
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
      genGrid False lhsName
    _ -> do
      return $ T.pack $  "// dunno how gen " ++ show mmInst


-- | generate a staging/unstaging code

genStagingCode :: Bool -> RidgeID -> TranM T.Text
genStagingCode isStaging rid = do
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
  rdgName <- nameRidgeResource rid
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
        [ T.unwords
          ["for (int ", i, "=", showC l ,";", i,  "<", showC h, ";++", i, "){"]
        | (i,(l,h)) <- (toList ivars) `zip`
          zip (toList loopFroms) (toList loopTos)]
      closeLoops =
        ["}" | _ <- toList ivars]

      rdgTerm = rdgName <> foldMap brackets ivars
      arrTerm = arrName  <> foldMap brackets (liftVec2 (\i n -> i <> "+" <> showC n) ivars otherOffset)

      body
        | isStaging = rdgTerm <> "=" <> arrTerm
        | otherwise = arrTerm <> "=" <> rdgTerm

  return $ T.unlines openLoops <> body <> ";" <> T.unlines closeLoops


-- | generate a distributed program
genDistributedProgram :: [DistributedInst] -> TranM T.Text
genDistributedProgram insts = do
  stepGraph <- use omStepGraph
  theGraph .= stepGraph

  ps <- mapM go insts

  monitorInterval0 <- use ncMonitorInterval

  return $  mconcat ps
    where
      go :: DistributedInst -> TranM T.Text
      go (Computation cmp destRsc) = genComputation cmp destRsc
      go (Unstage rid) = genStagingCode False rid
      go (Stage rid) = genStagingCode True rid
      go (FreeResource _) = return ""

-- | Let the plans collaborate

collaboratePlans :: TranM ()
collaboratePlans = do
  plans0 <- use tsMPIPlanMap

  let commonStaticBox :: M.Map IdentName Box
      commonStaticBox = M.unionsWith (|||)
        [ M.singleton snName b
        | p <- M.elems plans0
        , (ResourceStatic snName (), b)  <- M.toList $ p ^. planArrayAlloc
        ]

      newPlans = M.map rewritePlan plans0

      rewritePlan :: MPIPlan -> MPIPlan
      rewritePlan = planArrayAlloc %~ M.mapWithKey go

      go (ResourceStatic snName ()) _ = fromJust $ M.lookup snName commonStaticBox
      go _ b = b

  tsMPIPlanMap .= newPlans


-- | The main translation logic
tellProgram :: WithCommandLineOption => TranM ()
tellProgram = do
  setNumericalConfig
  setNamingState

  nc <- use tsNumericalConfig
  mmprog <- use theMMProgram

  tsMPIPlanSelection .= False
  plan <- liftIO $ makePlan nc mmprog
  mPIPlan .= plan

  tsMPIPlanSelection .= True
  plan <- liftIO $ makePlan (nc & ncWallInverted .~ Just True) mmprog
  mPIPlan .= plan

  collaboratePlans

  tellH $ T.unlines
    [ ""
    , "#pragma once"
    , "#ifdef __cplusplus"
    , "extern \"C\""
    , "{"
    , "#endif"
    ]

  ivars <- fmap T.pack <$> view axesNames
  intraExtents <- use ncIntraNodeShape

  tellH $ T.unlines ["#include <mpi.h>"]
  tellC $ T.unlines ["#include <mpi.h>" ,
                     "#include <math.h>" ,
                     "#include <stdbool.h>" ,
                     "#include \"" <> T.pack hxxFileName <> "\""]
  tellC $ cxxTemplate

  tellBoth "\n\n"

  forM_ [False, True] $ \ mps -> do
    tsMPIPlanSelection .= mps
    tellArrayDecls

  tellBoth "\n"

  tellHLn $ "struct Formura_Navigator {"
  tellHLn $ "int time_step;"
  forM_ ivars $ \i -> do
    tellHLn $ "int lower_" <> i <> ";"
    tellHLn $ "int upper_" <> i <> ";"
    tellHLn $ "int offset_" <> i <> ";"

  tellHLn $ "};"

  tellBoth "\n\n"

  tellBoth "int Formura_Init (struct Formura_Navigator *navi, MPI_Comm comm)"
  tellH ";"


  tellCLn "{"
  tellCLn "navi->time_step=0;"
  forM_ (zip (toList ivars) (toList intraExtents)) $ \(i, e) -> do
    tellCLn $ "navi->lower_" <> i <> "=0;"
    tellCLn $ "navi->offset_" <> i <> "=0;"
    tellCLn $ "navi->upper_" <> i <> "=" <> showC e <> ";"
  tellCLn "return 0;}"



  tellBoth "\n\n"

  tellBoth "int Formura_Forward (struct Formura_Navigator *navi)"
  tellH ";"

  cprogcon <- forM [False, True] $ \ mps -> do
    tsMPIPlanSelection .= mps
    dProg <- use planDistributedProgram
    genDistributedProgram dProg


  monitorInterval0 <- use ncMonitorInterval
  timeStepVarName <- genFreeName "timestep"


  when ((monitorInterval0`mod`2)/=0) $ raiseErr $ failed "Monitor interval must be multiple of 2"

  let openTimeLoop = "for(int " <> timeStepVarName <> "=0;" <>
                     timeStepVarName <> "<" <> showC (monitorInterval0`div`2)  <> ";" <>
                     "++" <> timeStepVarName <>  "){"
      closeTimeLoop = "}"


  tellC $ T.unlines
    [ "{"
    , openTimeLoop
    , T.unlines [cprogcon!!0,"/* HALFWAYS */" , cprogcon!!1]
    , closeTimeLoop
    , "navi->time_step += "  <> showC monitorInterval0  <> ";"
    , "return 0;}"
    ]


  tellH $ T.unlines
    [ ""
    , "#ifdef __cplusplus"
    , "}"
    , "#endif"
    ]


genCxxFiles :: WithCommandLineOption => Program -> MMProgram -> IO ()
genCxxFiles formuraProg mmProg = do
  let
    tranState0 = TranState
      { _tranSyntacticState = defaultCompilerSyntacticState{ _compilerStage = "C++ code generation"}
      , _tsNamingState = defaultNamingState
      , _theProgram = formuraProg
      , _theMMProgram = mmProg
      , _tsNumericalConfig = defaultNumericalConfig
      , _theGraph = M.empty
      , _tsMPIPlanSelection = False
      , _tsMPIPlanMap = M.empty
      }


  (_, _, CProgram hxxContent cxxContent)
    <- runCompilerRight tellProgram
       (mmProg ^. omGlobalEnvironment)
       tranState0

  createDirectoryIfMissing True (cxxFilePath ^. directory)


  T.writeFile hxxFilePath hxxContent
  T.writeFile cxxFilePath cxxContent

  mapM_ indent [hxxFilePath, cxxFilePath]
  where
    indent fn = X.handle ignore $ callProcess "indent" ["-gnu", "-i2", "-nut","-br", "-nlp","-ip0","-l80", fn]

    ignore :: X.SomeException -> IO ()
    ignore _ = return ()

ncFilePath :: WithCommandLineOption => FilePath
ncFilePath = case ?commandLineOption ^. numericalConfigFilename of
  "" -> head (?commandLineOption ^. inputFilenames) & extension .~ ".nc"
  x  -> x


cxxFilePath :: WithCommandLineOption => FilePath
cxxFilePath = case ?commandLineOption ^. outputFilename of
  "" -> head (?commandLineOption ^. inputFilenames) & extension .~ ".c"
  x  -> x

hxxFilePath :: WithCommandLineOption => FilePath
hxxFilePath = cxxFilePath & extension .~ ".h"

cxxFileName :: WithCommandLineOption => FilePath
cxxFileName = cxxFilePath ^. filename

hxxFileName :: WithCommandLineOption => FilePath
hxxFileName = hxxFilePath ^. filename

cxxTemplate :: T.Text
cxxTemplate = T.unlines
  [ ""
  , ""
  ]
