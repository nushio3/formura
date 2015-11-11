{-# LANGUAGE DeriveFunctor, FlexibleContexts, FlexibleInstances #-}
import Control.Applicative
import Control.Lens
import Control.Monad
import Data.Monoid
import qualified Data.Set as S
import Text.Trifecta
import Text.Trifecta.Delta (delta)
import qualified Text.PrettyPrint.ANSI.Leijen as PPR

import Metadata

type Tree = TreeWith Metadata
data TreeWith m a = Leaf m a | Tuple m [TreeWith m a]
                       deriving (Eq,Ord,Show,Read,Functor)


instance HasMetadata m => HasMetadata (TreeWith m a) where
  metadata =
    let l :: Lens' (TreeWith m a) m
        l f (Leaf m1 v) = fmap (\m2 -> Leaf m2 v) (f m1)
        l f (Tuple m1 v) = fmap (\m2 -> Tuple m2 v) (f m1)
    in l . metadata

type Expr = ExprWith Metadata
data ExprWith m = Add m (ExprWith m) (ExprWith m) | TreeExpr m (TreeWith m (ExprWith m))

instance HasMetadata m => HasMetadata (ExprWith m) where
  metadata =
    let l :: Lens' (ExprWith m) m
        l f (Add m1 u v) = fmap (\m2 -> Add m2 u v) (f m1)
        l f (TreeExpr m1 v) = fmap (\m2 -> TreeExpr m2 v) (f m1)
    in l . metadata


pMetadata :: Parser Metadata
pMetadata = fmap Metadata rend


pTree :: Parser a -> Parser (TreeWith Metadata a)
pTree pElem = pTuple <|> pLeaf
  where
    pLeaf = Leaf <$> pMetadata <*> pElem
    pTuple = do
      symbol "("
      m <- pMetadata
      children <- pTree pElem `sepBy` (symbol ",")
      symbol ")"
      return $ Tuple m children

zipTreeWith :: Metadata -> (a -> b -> c) -> Tree a -> Tree b -> Either PPR.Doc (Tree c)
zipTreeWith m f ta tb = case (ta,tb) of
  (Leaf _ a0, Leaf _ b0)  -> return $ Leaf m (f a0 b0)
  (Leaf _ a0, b0@(Tuple _ bs)) -> return $ fmap (f a0) b0
  (a0@(Tuple _ as), Leaf _ b0) -> return $ fmap (flip f b0) a0
  (Tuple ma as, Tuple mb bs) | length as /= length bs -> Left doc0
    where
      doc0 :: PPR.Doc
      doc0 = PPR.text "tuple size mismatch" <> pprm ma <> pprm mb

      pprm :: Metadata -> PPR.Doc
      pprm (Metadata r1) = explain (addCaret (delta r1) r1) (Err Nothing [] S.empty)

  (Tuple _ as, Tuple _ bs) -> Tuple m <$> zipWithM (zipTreeWith m f) as bs

main :: IO ()
main = do
  putStrLn "HELLOWORLD"
