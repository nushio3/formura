{-# LANGUAGE FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, StandaloneDeriving, TemplateHaskell #-}

module Formura.Compiler where

import           Control.Applicative
import           Control.Lens
import           Control.Monad.Trans.Either
import           Control.Monad.RWS
import qualified Data.Set as S
import qualified Text.Trifecta as P
import qualified Text.PrettyPrint.ANSI.Leijen as Ppr

import Formura.Language.Combinator

type CompilerError = Ppr.Doc

-- | The state of the compiler.
data CompilerSyntacticState =
  CompilerSyntacticState
  { _compilerFocus :: Maybe Metadata
  , _compilerStage :: String }

makeClassy ''CompilerSyntacticState

defaultCompilerSyntacticState :: CompilerSyntacticState
defaultCompilerSyntacticState = CompilerSyntacticState Nothing ""

-- | The formura compiler monad.
newtype CompilerMonad r w s a = CompilerMonad
  { runCompilerMonad :: EitherT CompilerError (RWST r w s IO) a}
              deriving (Functor, Applicative, Monad, MonadIO,
                        MonadReader r, MonadState s, MonadWriter w)

compileErrMsg :: (HasCompilerSyntacticState s, MonadState s m) => P.Err -> m Ppr.Doc
compileErrMsg errMsg = do
    stg <- use compilerStage
    foc <- use compilerFocus
    let errMsg2
          | stg == "" = errMsg
          | otherwise = errMsg & P.footnotes %~ (++ [Ppr.text ("when " ++ stg)])
    case foc of
      Nothing -> return $ P.explain P.emptyRendering $ errMsg2
      Just (Metadata r b e) -> return $
        P.explain (P.addSpan b e $ r) $ errMsg2


-- | Throw an error, possibly with user-friendly diagnostics of the current compiler state.
instance (HasCompilerSyntacticState s, Monoid w) => P.Errable (CompilerMonad r w s) where
  raiseErr errMsg = do
    msg2 <- compileErrMsg errMsg
    CompilerMonad $ left $ msg2

-- | Run the compiler and get the result.
runCompiler :: CompilerMonad r w s a -> r -> s -> IO (Either CompilerError a)
runCompiler m r s = fmap fst $ evalRWST (runEitherT $ runCompilerMonad m) r s

-- | Raise doc as an error
raiseDoc :: P.Errable m => Ppr.Doc ->  m a
raiseDoc doc = P.raiseErr $ P.Err (Just doc) [] S.empty

-- | The monadic algebra, specialized to the compiler monad.
type CompilerAlgebra r w s f a = f a -> CompilerMonad r w s a

-- | The compiler-monad-specific fold, that takes track of the syntax tree traversed.
compilerFold :: (Monoid w, Traversable f, HasCompilerSyntacticState s) =>
           CompilerAlgebra r w s f (Lang g) -> Fix f -> CompilerMonad r w s (Lang g)
compilerFold k (In meta x) = do
  r1 <- traverse (compilerFold k) x
  compilerFocus %= (meta <|>)
  r2 <- k r1
  return $ propagateMetadata meta r2

-- | The compiler-monad-specific fold, that takes track of the syntax tree traversed and produces non-language results.
compilerFoldout :: (Monoid w, Traversable f, HasCompilerSyntacticState s) =>
           CompilerAlgebra r w s f g -> Fix f -> CompilerMonad r w s g
compilerFoldout k (In meta x) = do
  r1 <- traverse (compilerFoldout k) x
  compilerFocus %= (meta <|>)
  r2 <- k r1
  return $ r2
