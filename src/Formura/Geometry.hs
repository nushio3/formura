{- |
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

Module for geometry inference.
-}

{-# LANGUAGE DeriveDataTypeable, DeriveFunctor, DeriveFoldable, DeriveTraversable, FlexibleInstances, TemplateHaskell, TypeSynonymInstances #-}

module Formura.Geometry where

import Algebra.Lattice.Levitated
import Control.Lens
import Data.Data

import Formura.Vec

type Pt = Vec Int

data Orthotope a = Orthotope { _lowerVertex :: Vec a ,
                   _upperVertex :: Vec a}
           deriving (Eq, Ord, Show, Read, Functor, Foldable, Traversable, Data)


makeLenses ''Orthotope

instance Num a => Num (Levitated a) where
  (Levitate a) + (Levitate b) = Levitate (a + b)
  Top + _ = Top
  Bottom + _ = Bottom
  _ + Top = Top
  _ + Bottom = Bottom

  (Levitate a) * (Levitate b) = Levitate (a * b)
  Top * Top = Bottom
  Bottom * Bottom = Bottom
  _ * _ = Top

  negate (Levitate a) = Levitate (negate a)
  negate Top = Bottom
  negate Bottom = Top

  abs (Levitate a) = Levitate (abs a)
  abs _ = Bottom

  signum (Levitate a) = Levitate (signum a)
  signum Top = -1
  signum Bottom = 1

  fromInteger = Levitate . fromInteger

touchdown :: Levitated a -> Maybe a
touchdown (Levitate x) = Just x
touchdown _ = Nothing -- airplane crash!

-- | A 'Partition' is an 'Orthotope' with possibly infinite extent
type Partition = Orthotope (Levitated Int)
-- | A 'Box' is an 'Orthotope' with strictly finite volue
type Box = Orthotope Int

class Geometric a where
  move :: Pt -> a -> a
  (&&&) :: a -> a -> a
  (|||) :: a -> a -> a

instance Geometric a => Geometric [a] where
  move v = fmap (move v)
  (&&&) = zipWith (&&&)
  (|||) = zipWith (|||)

instance Geometric a => Geometric (Vec a) where
  move v = fmap (move v)
  (&&&) = liftVec2 (&&&)
  (|||) = liftVec2 (|||)

instance (Num a, Ord a) => Geometric (Orthotope a) where
  move v (Orthotope a b) =
    let mv = liftVec2 (\x lx -> fromIntegral x + lx)
    in Orthotope (mv v a) (mv v b)
  (Orthotope a b) &&& (Orthotope c d) = Orthotope (liftVec2 max a c) (liftVec2 min b d)
  (Orthotope a b) ||| (Orthotope c d) = Orthotope (liftVec2 min a c) (liftVec2 max b d)

instance Monoid Partition where
  mempty = Orthotope (PureVec Top) (PureVec Bottom)
  mappend = (&&&)

class Geometric a => HasVolume a where
  volume :: a -> Int
  intersects :: a -> a -> Bool
  intersects a b = volume (a&&&b) > 0

instance HasVolume Box where
  volume (Orthotope l u) = product $ liftVec2 relu l u
    where
      relu l u | u <= l    = 0
               | otherwise = u-l
