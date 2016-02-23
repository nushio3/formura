{-# LANGUAGE DeriveFunctor, DeriveFoldable, DeriveTraversable #-}

data T a = T [T a] | A a deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

instance Applicative T where
  pure x = A x
  (<*>) = go where
    go (A f) (A x) = A (f x)
    go (T afs) ax@(A _) = T [ af <*> ax | af <- afs]
    go af@(A _) (T axs) = T [ af <*> ax | ax <- axs]
    go (T afs) (T axs) | length afs == length axs = T $ zipWith (<*>) afs axs
                       | otherwise                = T []


main :: IO ()
main = do
  print $ (*) <$> T [A 1, A 2, A 3] <*> T [A 10, A 100, A 1000]
  print $ (*) <$> T [A 1, T [A 2, A 22, A 222], A 3] <*> T [A 10, A 100, A 1000]
  print $ T [A (+), A (*)] <*> T [A 10, A 6] <*> T [A 100, A 7]
