{-# LANGUAGE FlexibleContexts, FlexibleInstances, OverloadedStrings, PackageImports, TemplateHaskell #-}

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


showC :: Show a => a -> T.Text
showC = T.pack . show

parens :: T.Text -> T.Text
parens x = "(" <> x <> ")"

brackets :: T.Text -> T.Text
brackets x = "[" <> x <> "]"

class ToC a where
  toC :: a -> T.Text

newtype VariableName = VariableName T.Text

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


data CProgram = CProgram { _headerFileContent :: T.Text, _sourceFileContent :: T.Text}
                deriving (Eq, Ord, Show)
makeLenses ''CProgram

tellH :: (MonadWriter CProgram m) => T.Text -> m ()
tellH txt = tell $ CProgram txt ""
tellC :: (MonadWriter CProgram m) => T.Text -> m ()
tellC txt = tell $ CProgram "" txt


instance Monoid CProgram where
  mempty = CProgram "" ""
  mappend (CProgram h1 c1) (CProgram h2 c2) = CProgram (h1 <> h2) (c1 <> c2)

type TranM = CompilerMonad GlobalEnvironment CProgram TranState

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

translateProgram :: TranM ()
translateProgram = do
  tellH $ T.unlines ["#include <mpi.h>"]
  tellC $ T.unlines ["#include <mpi.h>" , "#include \"output.h\""]
