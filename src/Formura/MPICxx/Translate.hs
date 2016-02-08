{-# LANGUAGE ConstraintKinds, FlexibleContexts, FlexibleInstances, ImplicitParams, OverloadedStrings, PackageImports, TemplateHaskell #-}

module Formura.MPICxx.Translate where

import           Control.Applicative
import           Control.Lens
import           Control.Monad
import "mtl"     Control.Monad.RWS
import qualified Data.IntMap as G
import qualified Data.Text as T
import qualified Data.Text.IO as T
import           System.Directory
import           System.FilePath.Lens
import           System.Process

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

data TranState = TranState
  { _tranSyntacticState :: CompilerSyntacticState
  , _theProgram :: MMProgram
  }
makeClassy ''TranState

instance HasCompilerSyntacticState TranState where
  compilerSyntacticState = tranSyntacticState
-- instance HasGlobalEnvironment TranState where
--   globalEnvironment = tranGlobalEnvironment

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



instance Monoid CProgram where
  mempty = CProgram "" ""
  mappend (CProgram h1 c1) (CProgram h2 c2) = CProgram (h1 <> h2) (c1 <> c2)


type TranM = CompilerMonad GlobalEnvironment CProgram TranState

-- * Parallel code generation

-- |  Configuration for distributed parallel code generation.
data NumericalConfig = NumericalConfig
  { _ncIntraNodeShape :: Vec Int
  , _ncMPIGridShape :: Vec Int
  , _ncTemporalBlockingInterval :: Int
  , _ncMonitorInterval :: Int
  }

defaultNumericalConfig :: NumericalConfig
defaultNumericalConfig = undefined

translateProgram :: WithCommandLineOption => TranM ()
translateProgram = do
  ivars <- map T.pack <$> view axesNames

  tellH $ T.unlines ["#include <mpi.h>"]
  tellC $ T.unlines ["#include <mpi.h>" , "#include \"" <> T.pack hxxFileName <> "\""]

  tellBoth "\n\n"

  tellHLn $ "struct Formura_Navigator {"
  tellHLn $ "int time_step;"
  forM_ ivars $ \i -> do
    tellHLn $ "int lower_" <> i <> ";"
    tellHLn $ "int upper_" <> i <> ";"
    tellHLn $ "int offset_" <> i <> ";"

  tellHLn $ "};"

  tellBoth "\n\n"

  tellBoth "int Formura_Init (Formura_Navigator *navi, MPI_Comm comm)"
  tellH ";"
  tellC $ T.unlines
    [ "{"
    , "navi->time_step=0;"
    , "}"
    ]

  tellBoth "\n\n"

  tellBoth "int Formura_Forward (Formura_Navigator *navi)"
  tellH ";"
  tellC $ T.unlines
    [ "{"
    , "printf(\"mae ni susumou!\n\");"
    , "navi->time_step += 1;"
    , "}"
    ]

genCxxFiles :: WithCommandLineOption => Program -> MMProgram -> IO ()
genCxxFiles formuraProg mmProg = do
  let
    tranState0 = TranState
      { _tranSyntacticState = defaultCompilerSyntacticState{ _compilerStage = "C++ code generation"}
      , _theProgram = mmProg
      }

  (_, _, CProgram hxxContent cxxContent)
    <- runCompilerRight translateProgram
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
  "" -> head (?commandLineOption ^. inputFilenames) & extension .~ ".cpp"
  x  -> x

hxxFilePath :: WithCommandLineOption => FilePath
hxxFilePath = cxxFilePath & extension .~ ".h"

cxxFileName :: WithCommandLineOption => FilePath
cxxFileName = cxxFilePath ^. filename

hxxFileName :: WithCommandLineOption => FilePath
hxxFileName = hxxFilePath ^. filename
