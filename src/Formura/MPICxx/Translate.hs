{-# LANGUAGE ConstraintKinds, FlexibleContexts, FlexibleInstances, ImplicitParams, MultiParamTypeClasses, OverloadedStrings, PackageImports, TemplateHaskell #-}

module Formura.MPICxx.Translate where

import           Control.Applicative
import qualified Control.Exception as X
import           Control.Lens
import           Control.Monad
import "mtl"     Control.Monad.RWS
import           Data.Char (toUpper)
import           Data.Foldable (toList)
import qualified Data.Map as M
import qualified Data.Set as S
import qualified Data.Text as T
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
import           Formura.GlobalEnvironment
import           Formura.Language.Combinator (subFix)
import           Formura.NumericalConfig
import           Formura.OrthotopeMachine.Graph
import           Formura.Syntax
import           Formura.Vec
import           Formura.MPICxx.Cut (makePlan, MPIPlan(..))

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
  , _freeNameCounter :: Integer
  , _freeLocalNameCounter :: Integer
  , _nodeIDtoLocalName :: M.Map MMNodeID T.Text
  , _loopIndexNames :: Vec T.Text
  , _loopExtentNames :: Vec T.Text
  }
makeClassy ''NamingState

defaultNamingState = NamingState
  { _alreadyGivenNames = S.empty
  , _alreadyGivenLocalNames = S.empty
  , _freeNameCounter = 0
  , _freeLocalNameCounter = 0
  , _nodeIDtoLocalName = M.empty
  , _loopIndexNames = PureVec ""
  , _loopExtentNames = PureVec ""
  }

data TranState = TranState
  { _tranSyntacticState :: CompilerSyntacticState
  , _tsNumericalConfig :: NumericalConfig
  , _tsNamingState :: NamingState
  , _theProgram :: Program
  , _theMMProgram :: MMProgram
  , _theGraph :: MMGraph
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

-- | Generate Declaration for State Arrays
tellStateArrays :: TranM ()
tellStateArrays = do
  stateSig <- use omStateSignature
  forM_ (M.toList stateSig) $ \ (identName, typ) -> do
    tellH "extern "
    decl <- genTypeDecl identName typ
    tellBoth decl
    tellBothLn ";"

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

genMMInstruction :: MMInstruction -> TranM (T.Text, T.Text)
genMMInstruction mminst = do
  indNames <- use loopIndexNames

  alreadyGivenLocalNames .= S.empty
  freeLocalNameCounter .= 0
  nodeIDtoLocalName .= M.empty

  let accAt :: Vec Int -> T.Text
      accAt v = foldMap brackets $ kutukeru  <$> indNames <*> v
      kutukeru i d | d == 0 = i
                   | d <  0 = i <> showC d
                   | otherwise = i <> "+" <> showC d

  txts <- forM (M.toList mminst) $ \(nid0, Node inst microTyp _) -> do
    thisName <- genFreeLocalName "a"
    nodeIDtoLocalName %= M.insert nid0 thisName
    microTypDecl <- genTypeDecl "" (subFix microTyp)
    let thisEq :: T.Text -> TranM T.Text
        thisEq code = return $ microTypDecl <> " " <> thisName <> "=" <> code <> ";"

        query :: MMNodeID -> TranM T.Text
        query nid1 = do
          nmap <- use nodeIDtoLocalName
          case M.lookup nid1 nmap of
            Just vname -> return vname
            Nothing -> raiseErr $ failed $ "genExpr: missing graph node " ++ show nid1

    case inst of
      LoadCursorStatic vi name -> thisEq $ T.pack name <> accAt vi
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
        let Just (VariableName nam) = A.viewMaybe node
        case node ^. nodeType of
          ElemType _ -> thisEq $ nam
          _ -> thisEq $ nam <> accAt vi
      Store _ x -> do
        x_code <- query x
        nodeIDtoLocalName %= M.insert nid0 x_code
        return ""
      x -> raiseErr $ failed $ "mpicxx codegen unimplemented for keyword: " ++ show x

  nmap <- use nodeIDtoLocalName
  let (tailID, _) = M.findMax mminst
      Just tailName = M.lookup tailID nmap
  return $ (T.unlines txts, tailName)

-- | generate a formura function body.

genGraph :: Bool -> MMGraph -> TranM T.Text
genGraph isTimeLoop gr = do
  theGraph .= gr
  ivars <- use loopIndexNames
  nvars <- use loopExtentNames
  intraExtent <- use ncIntraNodeShape

  monitorInterval0 <- use ncMonitorInterval

  timeStepVarName <- if isTimeLoop then genFreeName "timestep"
                     else return ""

  let ivarDecl = "int " <> T.intercalate ", " (toList ivars) <> ";"
      nvarDecl = "const int " <> T.intercalate ", " nvarEqn <> ";"
      nvarEqn = [x <> "=" <> showC n  | (x,n) <- zip (toList nvars) (toList intraExtent)]
      timeStepDecl = "int " <> timeStepVarName <> ";"

  let openTimeLoop = "for(" <> timeStepVarName <> "=0;" <>
                     timeStepVarName <> "<" <> showC monitorInterval0  <> ";" <>
                     "++" <> timeStepVarName <>  "){"
      closeTimeLoop = "}"

  ps <- forM (M.toList gr) $ \(nid, Node inst typ anot) -> do
    let Just (VariableName lhsName) = A.viewMaybe anot
    let
      Just (Boundary (lowerBound, upperBound)) = A.toMaybe anot

      genGrid lhsName2 = do
        let openLoops =
              [ T.unwords
                ["for (", i, "=", showC l ,";", i,  "<", n,"+",showC h, ";++", i, "){"]
              | ((i,n),(l,h)) <- zip (toList ivars) (toList nvars) `zip`
                                 zip (toList lowerBound) (toList upperBound)]
            closeLoops =
              ["}" | _ <- toList ivars]

        (letBs,rhs) <- genMMInstruction inst
        let bodyExpr = lhsName2 <> foldMap brackets ivars <> "=" <> rhs <> ";"
        return $ T.unlines $
          openLoops ++ [letBs,bodyExpr] ++ closeLoops


    case typ of
      ElemType "void" ->
        case mmInstTail inst of
          Store n _ -> genGrid (T.pack n)
          _ -> return "// void"
      ElemType ctyp -> do
        (letBs,rhs) <- genMMInstruction inst
        return $ T.unlines ["{",letBs, lhsName <> "=" <> rhs <> ";", "}"]
      GridType _ typ -> genGrid lhsName
      _ -> do
        let Just (VariableName nam) = A.viewMaybe anot
        return $ T.pack $  "// dunno how gen " ++ show nam ++ show inst
  let ifTime x = if isTimeLoop then x else ""
  return $ ivarDecl <> nvarDecl <> ifTime timeStepDecl <>
    ifTime openTimeLoop <> T.unlines ps <> ifTime closeTimeLoop

-- | The main translation logic
tellProgram :: WithCommandLineOption => TranM ()
tellProgram = do
  setNumericalConfig
  setNamingState

  nc <- use tsNumericalConfig
  mmprog <- use theMMProgram

  plan <- liftIO $ makePlan nc mmprog


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
                     "#include \"" <> T.pack hxxFileName <> "\""]
  tellC $ cxxTemplate

  tellBoth "\n\n"

  tellStateArrays
  tellIntermediateVariables

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

  mmg <- use omInitGraph
  con <- genGraph False $ mmg

  tellCLn "{"
  tellC  con
  tellCLn "navi->time_step=0;"
  forM_ (zip (toList ivars) (toList intraExtents)) $ \(i, e) -> do
    tellCLn $ "navi->lower_" <> i <> "=0;"
    tellCLn $ "navi->offset_" <> i <> "=0;"
    tellCLn $ "navi->upper_" <> i <> "=" <> showC e <> ";"
  tellCLn "return 0;}"



  tellBoth "\n\n"

  tellBoth "int Formura_Forward (struct Formura_Navigator *navi)"
  tellH ";"

  mmg <- use omStepGraph
  con <- genGraph True $ mmg
  monitorInterval0 <- use ncMonitorInterval

  tellC $ T.unlines
    [ "{"
    , con
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
  , "typedef int bool;"
  , ""
  ]
