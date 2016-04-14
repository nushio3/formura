module Formura.Annotation.Boundary where

import Data.Monoid

import Formura.Vec

newtype Boundary = Boundary (Vec Int, Vec Int)
                 deriving (Eq, Ord, Show, Read)


instance Monoid Boundary where
  -- `div` 2 to avoid overflow
  mempty = Boundary (PureVec $ minBound `div` 2, PureVec $ maxBound `div` 2)
  mappend (Boundary (l1, u1)) (Boundary (l2, u2))
    = Boundary (max <$> l1 <*> l2, min <$> u1 <*> u2)

newtype NBUSpine = NBUSpine Bool
