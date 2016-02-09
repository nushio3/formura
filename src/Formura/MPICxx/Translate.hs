{-# LANGUAGE ConstraintKinds, FlexibleContexts, FlexibleInstances, ImplicitParams, MultiParamTypeClasses, OverloadedStrings, PackageImports, TemplateHaskell #-}

module Formura.MPICxx.Translate where

import           Control.Applicative
import           Control.Lens
import           Control.Monad
import "mtl"     Control.Monad.RWS
import           Data.Char (toUpper)
import           Data.Foldable (toList)
import qualified Data.IntMap as G
import qualified Data.Map as M
import qualified Data.Set as S
import qualified Data.Text as T
import qualified Data.Text.IO as T
import           System.Directory
import           System.FilePath.Lens
import           System.Process
import           Text.Trifecta (failed, raiseErr)


import qualified Formura.Annotation as A
import           Formura.Annotation.Representation
import           Formura.Compiler
import           Formura.CommandLineOption
import           Formura.GlobalEnvironment
import           Formura.Language.Combinator (subFix)
import           Formura.OrthotopeMachine.Graph
import           Formura.Syntax
import           Formura.Vec


showC :: Show a => a -> T.Text
showC = T.pack . show

parens :: T.Text -> T.Text
parens x = "(" <> x <> ")"

brackets :: T.Text -> T.Text
brackets x = "[" <> x <> "]"

braces :: T.Text -> T.Text
braces x = "{" <> x <> "}"

newtype VariableName = VariableName T.Text

-- |  Configuration for distributed parallel code generation.
data NumericalConfig = NumericalConfig
  { _ncIntraNodeShape :: Vec Int
  , _ncMPIGridShape :: Vec Int
  , _ncTemporalBlockingInterval :: Int
  , _ncMonitorInterval :: Int
  }
makeClassy ''NumericalConfig

defaultNumericalConfig :: NumericalConfig
defaultNumericalConfig = NumericalConfig 0 0 0 0

-- | The struct for generating unique names, and holds already given names.
data NamingState = NamingState
  { _alreadyGivenNames :: S.Set T.Text
  , _freeNameCounter :: Integer
  , _loopIndexNames :: Vec T.Text
  , _loopExtentNames :: Vec T.Text
  }
makeClassy ''NamingState

defaultNamingState = NamingState
  { _alreadyGivenNames = S.empty
  , _freeNameCounter = 0
  , _loopIndexNames = PureVec ""
  , _loopExtentNames = PureVec ""
  }

data TranState = TranState
  { _tranSyntacticState :: CompilerSyntacticState
  , _tsNumericalConfig :: NumericalConfig
  , _tsNamingState :: NamingState
  , _theProgram :: Program
  , _theMMProgram :: MMProgram
  , _theGraph :: Graph MMInst
  }
makeClassy ''TranState


instance HasCompilerSyntacticState TranState where
  compilerSyntacticState = tranSyntacticState
instance HasNumericalConfig TranState where
  numericalConfig = tsNumericalConfig
instance HasMachineProgram TranState MMInst where
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

-- | generate new free name based on given identifier,
--   and prevent further generation of that name
genFreeName :: IdentName -> TranM T.Text
genFreeName ident = do
  agNames <- use alreadyGivenNames
  let initName = T.pack ident
      go = do
        ctr <- use freeNameCounter
        let tmpName = initName <> "_" <> showC ctr
        if S.member tmpName agNames
          then (freeNameCounter += 1) >> go
          else return tmpName
  givenName <- if S.member initName agNames then go else return initName
  alreadyGivenNames %= S.insert givenName
  return givenName

-- | read all numerical config from the Formura source program
setNumericalConfig :: TranM ()
setNumericalConfig = do
  dim <- view dimension
  formuraProg <- use theProgram

  -- set Numerical Configs
  let sds :: [SpecialDeclaration]
      sds = formuraProg ^. programSpecialDeclarations

      sdMap :: M.Map String [Integer]
      sdMap = M.fromList
              [(k,v) | OtherDeclaration k v <- sds]

  case M.lookup "mpi_grid_shape" sdMap of
    Just xs | length xs == dim -> ncMPIGridShape .= (fmap fromInteger $ Vec xs)
    _ -> raiseErr $ failed "bad mpi_grid_shape"
  case M.lookup "intra_node_shape" sdMap of
    Just xs | length xs == dim -> ncIntraNodeShape .= (fmap fromInteger $ Vec xs)
    _ -> raiseErr $ failed "bad intra_node_shape"
  case M.lookup "temporal_blocking_interval" sdMap of
    Just xs | length xs == 1 -> ncTemporalBlockingInterval .= (fromInteger $ head xs)
    _ -> raiseErr $ failed "bad temporal_blocking_interval"
  case M.lookup "monitor_interval" sdMap of
    Just xs | length xs == 1 -> ncMonitorInterval .= (fromInteger $ head xs)
    _ -> raiseErr $ failed "bad monitor_interval"
  return ()

-- | prepare unique name for everyone
setNamingState :: TranM ()
setNamingState = do
  stateVars <- use omStateSignature
  alreadyGivenNames .= (S.fromList $ map T.pack $ M.keys stateVars)

  ans <- view axesNames
  lins <- traverse (genFreeName . ("i"++)) (Vec ans)
  loopIndexNames .= lins

  luns <- traverse (genFreeName . ("N"++) . map toUpper) (Vec ans)
  loopExtentNames .= luns

  let nameNode :: Node MMInst -> TranM (Node MMInst)
      nameNode nd = do
        let initName = case A.viewMaybe nd  of
                        Just (SourceName n) -> n
                        _                   -> "a"
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
  ElemType "Rational" -> return $ "float " <> T.pack name
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
    forM_ (G.toList gr) $ \(_, node) -> do
      let typ = subFix $ node ^. nodeType
          Just (VariableName vname) = A.viewMaybe node
      decl <- genTypeDecl (T.unpack vname) typ
      tellC decl
      tellCLn ";"

-- | lookup node by its index
lookupNode :: NodeID -> TranM MMNode
lookupNode i = do
  g <- use theGraph
  case G.lookup i g of
   Nothing -> raiseErr $ failed $ "out-of-bound node reference: #" ++ show i
   Just n -> do
     case A.viewMaybe n of
        Just meta -> compilerFocus %= (meta <|>)
        Nothing -> return ()
     return n


-- | generate expression.

genExpr :: MMInst -> TranM T.Text
genExpr inst = do
  indNames <- use loopIndexNames
  let accAt :: Vec Int -> T.Text
      accAt v = foldMap brackets $ kutukeru  <$> indNames <*> v
      kutukeru i d | d == 0 = i
                   | d <  0 = i <> showC d
                   | otherwise = i <> "+" <> showC d
  case inst of
    Load name -> return $ T.pack name <> accAt 0
    Imm r -> return $ showC (realToFrac r :: Double)
    Uniop op a -> do
      a_code <- genExpr a
      return $ parens $ T.pack op <> a_code
    Binop op a b -> do
      a_code <- genExpr a
      b_code <- genExpr b
      case op of
        "**" -> return $ ("pow"<>) $ parens $ a_code <> "," <> b_code
        _ -> return $ parens $ a_code <> T.pack op <> b_code
    LoadCursor vi nid -> do
      node <- lookupNode nid
      let Just (VariableName nam) = A.viewMaybe node
      case node ^. nodeType of
        ElemType _ -> return $ nam
        _ -> return $ nam <> accAt vi
    x -> raiseErr $ failed $ "mpicxx codegen unimplemented for keyword: " ++ show x


-- | generate a formura function body.

genGraph :: Graph MMInst -> TranM T.Text
genGraph gr = do
  theGraph .= gr
  ivars <- use loopIndexNames
  nvars <- use loopExtentNames
  intraExtent <- use ncIntraNodeShape

  let ivarDecl = "int " <> T.intercalate ", " (toList ivars) <> ";"
      nvarDecl = "const int " <> T.intercalate ", " nvarEqn <> ";"
      nvarEqn = [x <> "=" <> showC n  | (x,n) <- zip (toList nvars) (toList intraExtent)]

  ps <- forM (G.toList gr) $ \(nid, Node inst typ anot) -> do
    let Just (VariableName lhsName) = A.viewMaybe anot
    case typ of
      ElemType "void" -> return "// void"
      ElemType ctyp -> do
        rhs <- genExpr inst
        return $ lhsName <> "=" <> rhs <> ";"
      GridType _ typ -> do
        let openLoops =
              [ T.unwords
                ["for (", i, "=0;", i,  "<", n, ";++", i, "){"]
              | (i,n) <- zip (toList ivars) (toList nvars) ]
            closeLoops =
              ["}" | _ <- toList ivars]
        rhs <- genExpr inst
        let bodyExpr = lhsName <> foldMap brackets ivars <> "=" <> rhs <> ";"
        return $ T.unlines $
          openLoops ++ [bodyExpr] ++ closeLoops
      _ -> do
        let Just (VariableName nam) = A.viewMaybe anot
        return $ T.pack $  "// dunno how gen " ++ show nam ++ show inst
  return $ ivarDecl <> nvarDecl <>T.unlines ps

-- | The main translation logic
tellProgram :: WithCommandLineOption => TranM ()
tellProgram = do
  setNumericalConfig
  setNamingState

  tellH $ T.unlines
    [ "#pragma once"
    , "#ifdef __cplusplus"
    , "extern \"C\""
    , "{"
    , "#endif"
    ]

  ivars <- map T.pack <$> view axesNames

  tellH $ T.unlines ["#include <mpi.h>"]
  tellC $ T.unlines ["#include <mpi.h>" ,
                     "#include <math.h>" ,
                     "#include \"" <> T.pack hxxFileName <> "\""]

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
  con <- genGraph $ mmg

  tellC $ T.unlines
    [ "{"
    , con
    , "navi->time_step=0;"
    , "}"
    ]

  tellBoth "\n\n"

  tellBoth "int Formura_Forward (struct Formura_Navigator *navi)"
  tellH ";"

  mmg <- use omStepGraph
  con <- genGraph $ mmg
  monitorInterval0 <- use ncMonitorInterval
  tellC $ T.unlines
    [ "{"
    , con
    , "navi->time_step += "  <> showC monitorInterval0  <> ";"
    , "}"
    ]


  tellH $ T.unlines
    [ "#ifdef __cplusplus"
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
      , _theGraph = G.empty
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
    indent fn = callProcess "indent" ["-kr", "-i2", fn]


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
