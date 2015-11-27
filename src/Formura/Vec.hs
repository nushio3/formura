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
import Text.Read

newtype Vec a = Vec { getVec :: [a] }
              deriving (Eq, Ord, Functor, Foldable, Traversable)

instance Show a => Show (Vec a) where
  showsPrec n (Vec xs) = showsPrec n xs

instance Read a => Read (Vec a) where
  readPrec = Vec <$> readPrec



instance Applicative Vec where
    pure x = Vec (repeat x)
    Vec fs <*> Vec xs = Vec (zipWith id fs xs)

instance Num a => Num (Vec a) where
  a + b = (+) <$> a <*> b
  a - b = (-) <$> a <*> b
  a * b = (*) <$> a <*> b
  abs   = fmap abs
  signum = fmap signum
  negate = fmap negate
  fromInteger = pure . fromInteger
