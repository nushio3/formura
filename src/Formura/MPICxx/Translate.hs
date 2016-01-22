{-# LANGUAGE OverloadedStrings, PackageImports, TemplateHaskell #-}

module Formura.MPICxx.Translate where

import           Control.Applicative
import           Control.Lens
import           Control.Monad
import "mtl"     Control.Monad.RWS
import qualified Data.IntMap as G
import qualified Data.Text as T

import qualified Formura.Annotation as A
import           Formura.Annotation.Representation
import           Formura.Compiler
import           Formura.GlobalEnvironment
import           Formura.OrthotopeMachine.Graph
import           Formura.Syntax
import           Formura.Vec

type Cxx = T.Text

showC :: Show a => a -> Cxx
showC = T.pack . show

parens :: Cxx -> Cxx
parens x = "(" <> x <> ")"

brackets :: Cxx -> Cxx
brackets x = "[" <> x <> "]"

class ToC a where
  toC :: a -> Cxx

newtype VariableName = VariableName Cxx

data TranState = TranState
  { _tranSyntacticState :: CompilerSyntacticState
  , _tranGlobalEnvironment :: GlobalEnvironment
  , _theGraph :: Graph
  }
makeClassy ''TranState

instance HasCompilerSyntacticState TranState where
  compilerSyntacticState = tranSyntacticState

instance HasGlobalEnvironment TranState where
  globalEnvironment = tranGlobalEnvironment

defaultTranState :: TranState
defaultTranState = TranState
  { _tranSyntacticState = defaultCompilerSyntacticState{ _compilerStage = "C++ code generation"}
  , _theGraph = G.empty
  }


type TranM = CompilerMonad GlobalEnvironment Cxx TranState

-- * Parallel code generation

-- |  Configuration for distributed parallel code generation.
data NumericalConfig = NumericalConfig
  { _ncSingleThreadShape :: Vec Int
  , _ncOMPThreadShape :: Vec Int
  , _ncMPINodeShape :: Vec Int
  }

defaultNumericalConfig :: NumericalConfig
defaultNumericalConfig =
  NumericalConfig
  { _ncSingleThreadShape = Vec [64,64]
  , _ncOMPThreadShape = Vec [2,4]
  , _ncMPINodeShape = Vec [5,10]
  }

translateHeader :: TranM ()
translateHeader = do
  tell $ T.unlines ["#include <mpi.h>"]

translateBody :: TranM ()
translateBody = do
  tell $ T.unlines ["#include <mpi.h>" , "#include \"output.h\""]
