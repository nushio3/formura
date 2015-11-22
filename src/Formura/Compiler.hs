{-# LANGUAGE FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, StandaloneDeriving, TemplateHaskell #-}

module Formura.Compiler where

import           Control.Applicative
import           Control.Lens
import           Control.Monad.Trans.Either
import           Control.Monad.State
import qualified Data.Set as S
import qualified Text.Trifecta as P
import qualified Text.PrettyPrint.ANSI.Leijen as Ppr

import Formura.Language.Combinator

type CompilerError = Ppr.Doc

-- | The state of the compiler.
data CompilerState =
  CompilerState
  { _compilerFocus :: Maybe Metadata
  , _compilerStage :: String }

makeClassy ''CompilerState

-- | The formura compiler monad.
newtype M a = M { runM :: EitherT CompilerError (StateT CompilerState IO) a}
              deriving (Functor, Applicative, Monad, MonadIO, MonadState CompilerState)

-- | Throw an error, possibly with user-friendly diagnostics of the current compiler state.
instance P.Errable M where
  raiseErr errMsg = do
    stg <- use compilerStage
    foc <- use compilerFocus
    let errMsg2
          | stg == "" = errMsg
          | otherwise = errMsg & P.footnotes %~ (++ [Ppr.text ("when " ++ stg)])
    case foc of
      Nothing ->
        M $ left $
        P.explain P.emptyRendering $ errMsg2
      Just (Metadata r b e) ->
        M $ left $
        P.explain (P.addSpan b e $ r) $ errMsg2

-- | Run the compiler and get the result.
runCompiler :: M a -> CompilerState -> IO (Either CompilerError a)
runCompiler m s = flip evalStateT s $ runEitherT $ runM m

-- | Raise doc as an error
raiseDoc :: P.Errable m => Ppr.Doc ->  m a
raiseDoc doc = P.raiseErr $ P.Err (Just doc) [] S.empty

-- | The monadic algebra, specialized to the compiler monad.
type CAlgebra f a = f a -> M a

-- | The compiler-monad-specific fold, that takes track of the syntax tree traversed.
compile :: Traversable f => CAlgebra f (Lang g) -> Fix f -> M (Lang g)
compile k (In meta x) = do
  compilerFocus %= (meta <|>)
  r1 <- traverse (compile k) x
  r2 <- k r1
  return $ propagateMetadata meta r2
