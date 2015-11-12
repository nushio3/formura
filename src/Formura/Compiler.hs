{-# LANGUAGE GeneralizedNewtypeDeriving, StandaloneDeriving, TemplateHaskell #-}

module Formura.Compiler where

import           Control.Applicative
import           Control.Lens
import           Control.Monad.Trans.Either
import           Control.Monad.State
import           Data.Monoid
import qualified Text.PrettyPrint.ANSI.Leijen as Ppr

import Formura.Language.Combinator

type CompilerError = Ppr.Doc

-- | The state of the compiler.
data CompilerState =
  CompilerState
  { _maybeDimension :: Maybe Int
  , _compilerFocus :: Maybe Metadata
  , _compilerStage :: String }

makeLenses ''CompilerState


-- | The formura compiler monad.
newtype M a = M { runM :: EitherT CompilerError (StateT CompilerState IO) a}
              deriving (Functor, Applicative, Monad, MonadIO, MonadState CompilerState)

-- | Run the compiler and get the result.
runCompiler :: M a -> CompilerState -> IO (Either CompilerError a)
runCompiler m s = flip evalStateT s $ runEitherT $ runM m

-- | Throw an error, possibly with user-friendly diagnostics of the current compiler state.
throw :: CompilerError -> M a
throw doc = do
  stg <- use compilerStage
  foc <- use compilerFocus
  let stgDoc = Ppr.text ("When " ++ stg) <> Ppr.line
  M $ left $ stgDoc <> doc


-- | The monadic algebra, specialized to the compiler monad.
type CAlgebra f a = f a -> M a

-- | The compiler-monad-specific fold.
compile :: Traversable f => CAlgebra f (Lang g) -> Fix f -> M (Lang g)
compile k (In meta x) = do
  compilerFocus %= (meta <|>)
  r1 <- traverse (compile k) x
  r2 <- k r1
  return $ propagateMetadata meta r2
