{-# LANGUAGE GeneralizedNewtypeDeriving, StandaloneDeriving, TemplateHaskell #-}

module Formura.Compiler where

import           Control.Lens
import           Control.Monad.Trans.Either
import           Control.Monad.State
import qualified Text.PrettyPrint.ANSI.Leijen as Ppr hiding (line, (<>), (<$>), empty, integer)


type CompilerError = Ppr.Doc

-- | The formura compiler monad.
newtype M a = M { runM :: EitherT CompilerError (StateT CompilerState IO) a}
              deriving (Functor, Applicative, Monad, MonadIO, MonadState CompilerState)

runCompiler :: (M a) -> CompilerState -> IO (Either CompilerError a)
runCompiler m s = flip evalStateT s $ runEitherT $ runM m

throw :: CompilerError -> M a
throw = M . left

data CompilerState =
  CompilerState
  { _dimension :: Maybe Int }
