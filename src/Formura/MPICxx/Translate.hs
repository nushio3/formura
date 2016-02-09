{-# LANGUAGE ConstraintKinds, FlexibleContexts, FlexibleInstances, ImplicitParams, MultiParamTypeClasses, OverloadedStrings, PackageImports, TemplateHaskell #-}

module Formura.MPICxx.Translate where

import           Control.Applicative
import           Control.Lens
import           Control.Monad
import "mtl"     Control.Monad.RWS
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

class ToC a where
  toC :: a -> T.Text

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
  }
makeClassy ''NamingState

defaultNamingState = NamingState S.empty 0 (PureVec "")

data TranState = TranState
  { _tranSyntacticState :: CompilerSyntacticState
  , _tsNumericalConfig :: NumericalConfig
  , _tsNamingState :: NamingState
  , _theProgram :: Program
  , _theMMProgram :: MMProgram
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



-- | Generate C type declaration for given language.
toTypeDecl :: IdentName -> TypeExpr -> TranM T.Text
toTypeDecl name typ = case typ of
  ElemType x -> return $ T.pack  x <> " " <> T.pack name
  GridType _ x -> do
    body <- toTypeDecl name x
    sz <- use ncIntraNodeShape
    let szpt = foldMap (brackets . showC) sz
    return $ body <> szpt
  _ -> raiseErr $ failed $ "Cannot translate type to C: " ++ show typ

-- | Extent String for State Arrays
tellStateArrays :: TranM ()
tellStateArrays = do
  stateSig <- use omStateSignature
  forM_ (M.toList stateSig) $ \ (identName, typ) -> do
    tellH "extern "
    decl <- toTypeDecl identName typ
    tellBoth decl
    tellBothLn ";"

-- | generate a formura function body.

genGraph :: Graph MMInst -> TranM T.Text
genGraph gr = do
  return ""


-- | The main translation logic
tellProgram :: WithCommandLineOption => TranM ()
tellProgram = do
  setNumericalConfig

  tellH $ T.unlines
    [ "#pragma once"
    , "#ifdef __cplusplus"
    , "extern \"C\""
    , "{"
    , "#endif"
    ]

  ivars <- map T.pack <$> view axesNames

  tellH $ T.unlines ["#include <mpi.h>"]
  tellC $ T.unlines ["#include <mpi.h>" , "#include \"" <> T.pack hxxFileName <> "\""]

  tellBoth "\n\n"

  tellStateArrays

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
    , "navi->time_step=0;"
    , con
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
