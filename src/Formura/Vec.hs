{- |
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

ZipList treated as mathematical vectors, to deal with multidimensionality in stencil computation.
-}

{-# LANGUAGE DeriveFunctor, DeriveFoldable, DeriveTraversable #-}

module Formura.Vec where

import Control.Applicative


newtype Vec a = Vec { getVec :: [a] }
              deriving (Show, Eq, Ord, Read, Functor, Foldable, Traversable)

instance Applicative Vec where
    pure x = Vec (repeat x)
    Vec fs <*> Vec xs = Vec (zipWith id fs xs)

instance Num a => Num (Vec a) where
  (+) = pure (+)
  (*) = pure (*)
