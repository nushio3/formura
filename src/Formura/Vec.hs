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
import Data.Monoid

data Vec a = Vec { getVec :: [a] } | PureVec a
           deriving (Functor, Foldable, Traversable)

instance Show a => Show (Vec a) where
  show (Vec xs) = show xs
  show (PureVec x) = "[" ++ show x ++ "..]"

-- | Equality of vector requires the knowledge of how to zero-fill
instance (Num a, Eq a) => Eq (Vec a) where
  a == b = and $ liftVec2 (==) a b

instance (Num a, Ord a) => Ord (Vec a) where
  compare a b = foldr (<>) EQ $ liftVec2 compare a b

instance Applicative Vec where
    pure x = PureVec x
    PureVec f <*> PureVec x = PureVec $ f x
    PureVec f <*> Vec xs    = Vec $ fmap f xs
    Vec fs <*> PureVec x    = Vec $ fmap ($x) fs
    Vec fs <*> Vec xs = Vec (zipWith id fs xs)

instance Num a => Num (Vec a) where
  (+) = liftVec2 (+)
  (-) = liftVec2 (-)
  (*) = liftVec2 (*)
  abs   = fmap abs
  signum = fmap signum
  negate = fmap negate
  fromInteger = pure . fromInteger

instance Fractional a => Fractional (Vec a) where
  (/) = liftVec2 (/)
  recip = fmap recip
  fromRational = pure .fromRational

liftVec2 :: (Num a, Num b) => (a -> b -> c) -> Vec a -> Vec b -> Vec c
liftVec2 f (PureVec x) (PureVec y) = PureVec $ f x y
liftVec2 f (PureVec x) (Vec ys   ) = Vec $ fmap (f x) ys
liftVec2 f (Vec xs   ) (PureVec y) = Vec $ fmap (flip f y) xs
liftVec2 f (Vec xs   ) (Vec ys   ) = let n = max (length xs) (length ys) in
  Vec $ take n $ zipWith f (xs ++ repeat 0) (ys ++ repeat 0)
