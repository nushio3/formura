{- |
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

Module for geometry inference.
-}

{-# LANGUAGE DeriveFunctor, DeriveFoldable, DeriveTraversable, FlexibleInstances, TemplateHaskell, TypeSynonymInstances #-}

module Formura.Geometry where

import Algebra.Lattice
import Algebra.Lattice.Levitated
import Control.Lens

import Formura.Vec

type Pt = Vec Int

data Box a = Box { _lowerVertex :: Vec a ,
                   _upperVertex :: Vec a}
           deriving (Eq, Ord, Show, Read, Functor, Foldable, Traversable)


makeLenses ''Box

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

type Partition = Box (Levitated Int)
type Orthotope = Box Int

class Geometric a where
  move :: Pt -> a -> a

instance Num a => Geometric (Box a) where
  move v (Box a b) =
    let mv = liftVec2 (\x lx -> fromIntegral x + lx)
    in Box (mv v a) (mv v b)

instance Monoid Partition where
  mempty = Box (PureVec Top) (PureVec Bottom)
  mappend (Box a b) (Box c d) = Box (liftVec2 max a c) (liftVec2 min b d)
