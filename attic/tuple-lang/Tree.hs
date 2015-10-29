{-# LANGUAGE DeriveFunctor, FlexibleContexts, FlexibleInstances #-}
import Control.Applicative
import Control.Lens
import Control.Monad
import Text.Trifecta
import Metadata


data TreeWith m a = Leaf m a | Tuple m [TreeWith m a]
                       deriving (Eq,Ord,Show,Read,Functor)
type Tree = TreeWith Metadata

instance HasMetadata m => HasMetadata (TreeWith m a) where
  metadata =
    let l :: Lens' (TreeWith m a) m
        l f (Leaf m1 v) = fmap (\m2 -> Leaf m2 v) (f m1)
        l f (Tuple m1 v) = fmap (\m2 -> Tuple m2 v) (f m1)
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

zipTreeWith :: Metadata -> (a -> b -> c) -> Tree a -> Tree b -> Either String (Tree c)
zipTreeWith m f ta tb = case (ta,tb) of
  (Leaf _ a0, Leaf _ b0)  -> return $ Leaf m (f a0 b0)
  (Leaf _ a0, b0@(Tuple _ bs)) -> return $ fmap (f a0) b0
  (a0@(Tuple _ as), Leaf _ b0) -> return $ fmap (flip f b0) a0
  (Tuple _ as, Tuple _ bs) | length as /= length bs -> Left "Tuple size mismatch"
  (Tuple _ as, Tuple _ bs) -> Tuple m <$> zipWithM (zipTreeWith m f) as bs

main :: IO ()
main = do
  print testTree1
  print testTree2
  print $ zipTreeWith undefined (\n xs -> concat $ replicate n xs)testTree1 testTree2

testTree1 :: Tree Int
testTree1 = undefined -- Leaf 4 -- Tuple [Leaf 3, Tuple[Leaf 4, Leaf 1]]

testTree2 :: Tree String
testTree2 = undefined -- Tuple [Leaf "hoge", Leaf "M"]
