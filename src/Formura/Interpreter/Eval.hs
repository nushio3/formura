{-# LANGUAGE FlexibleContexts, FlexibleInstances,  RankNTypes, TemplateHaskell #-}
module Formura.Interpreter.Eval where

import           Control.Applicative
import           Control.Lens
import           Control.Monad.RWS hiding (fix)
import qualified Data.Map as M
import qualified Data.Vector as V
import           Text.Trifecta (failed, raiseErr)

import           Formura.Interpreter.Value
import           Formura.Compiler
import           Formura.Language.Combinator
import           Formura.Syntax


type Binding = M.Map IdentName TypedValue

data Environment =
  Environment
  { _envDimension :: Int
  , _envExtent :: [Int]
  , _envCS :: CompilerSyntacticState
  }

makeLenses ''Environment

defaultEnvironment :: Environment
defaultEnvironment = Environment 0 [] defaultCompilerSyntacticState{ _compilerStage = "interpretation" }

instance HasCompilerSyntacticState Environment where
  compilerSyntacticState = envCS

type IM = CompilerMonad Binding () Environment
type IAlgebra f a = f a -> IM a

runIM :: IM a -> IO (Either CompilerError a)
runIM m = runCompiler m M.empty defaultEnvironment

-- | Monadic 'fold' specialized to the 'IM'.
iFold :: Traversable f => IAlgebra f (Lang g) -> Fix f -> IM (Lang g)
iFold = compilerFold

-- | Monadic 'fold' for twin language.
mfold2 :: Traversable f => AlgebraM IM f (Lang g, Lang h) -> Fix f -> IM (Lang g, Lang h)
mfold2 k (In meta x) = do
  r1 <- traverse (mfold2 k) x
  compilerFocus %= (meta <|>)
  (g2, h2) <- k r1
  return $ (propagateMetadata meta g2, propagateMetadata meta h2)


class Evalable a where
  eval :: a -> IM TypedValue

instance Evalable (ImmF x) where
  eval (ImmF r) = return $ (ElemValue $ fromRational r, ElemType "double")

instance Evalable (IdentF x) where
  eval (IdentF nam) = do
    binding <- ask
    case M.lookup nam (binding :: Binding) of
      Just x  -> return x
      Nothing -> raiseErr $ failed $ "undefined variable: " ++ nam

instance Evalable (OperatorF TypedValue) where
  eval (UniopF "+" x) = return x
  eval (UniopF "-" x) = evalUniop negate x
  eval (BinopF "+" x y) = evalBinop (+) x y
  eval (BinopF "-" x y) = evalBinop (-) x y
  eval (BinopF "*" x y) = evalBinop (*) x y
  eval (BinopF "/" x y) = evalBinop (/) x y
  eval (BinopF str _ _) = raiseErr $ failed $ "unimplemented binary operator: (" ++ str ++ ")"
  eval _ = raiseErr $ failed "unimplemented operator in eval"

evalUniop :: (forall a. Num a => a -> a) -> TypedValue -> IM TypedValue
evalUniop f (ElemValue r, t) = return $ (ElemValue (f r), t)

evalBinop :: (forall a. Fractional a => a -> a -> a) -> TypedValue -> TypedValue -> IM TypedValue
evalBinop f (ElemValue x, tx ) (ElemValue y, ty) = return $ (ElemValue (f x y), tx)

instance Evalable (TupleF TypedValue) where
  eval (Tuple xts) = return $ (Tuple $ map fst xts, Tuple $ map snd xts)

instance Evalable (GridF a x) where
  eval _ = raiseErr $ failed "eval of grid unimplemented."

instance Evalable (ApplyF x) where
  eval _ = raiseErr $ failed "eval of apply unimplemented."

instance Evalable (LambdaF x) where
  eval _ = raiseErr $ failed "eval of lambda unimplemented."

instance Evalable (LetF x) where
  eval _ = raiseErr $ failed "eval of let unimplemented."

voidEval :: a -> IM TypedValue
voidEval _ = raiseErr $ failed "eval of void unimplemented."

instance Evalable RExpr where
  eval = mfold2 (eval +:: eval +:: eval +:: eval +:: eval +:: eval +:: eval +:: eval +:: voidEval
                  :: RExprF TypedValue -> IM TypedValue)


ret :: Iso' [Int] Int
ret = iso enc dec
  where
    enc = product
    dec = const []

makeGridValueF :: [Rational] -> ([Rational] -> IM x) -> IM (GridValueF x)
makeGridValueF offset fun = do
  exts <- use envExtent
  let idxs = map (zipWith (+) offset . map toRational) $ spanExts exts
      spanExts []  = [[]]
      spanExts (n:ns) = [i:js| i <- [0..n-1], js <- spanExts ns]
  content <- mapM fun idxs
  return $ GridValueF offset $ V.fromList content

accessGridF :: GridValueF x -> [Rational] -> IM x
accessGridF g addr = do
  let iaddr = zipWith (-) addr (g ^.gridOffset)
  return undefined
