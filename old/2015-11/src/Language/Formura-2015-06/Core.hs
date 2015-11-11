module Language.Formura.Core where

import Data.Ratio
import Data.Map as M

data BoundaryCondition = OpenBoundary
                       | PeriodicBoundary

data Range = Range
  { axis :: String,
    offset :: Rational,
    boundary :: BoundaryCondition,
    lower :: Int,
    upper :: Int}

data Leaf = LRational Rational
          | LSymbol String
          | LArray [Range] Int
          | LObject (M.Map String Leaf)
