{-# LANGUAGE FlexibleInstances, FlexibleContexts, UndecidableInstances, GADTs, StandaloneDeriving, KindSignatures, TemplateHaskell #-}
module Language.Formura.AST where

import qualified Data.Map as M
import Data.Ratio

import Control.Lens
import Language.Formura.Parser
import Text.Trifecta
import Text.Printf

data FType = FTInt
           | FTRational
           | FTFloat
           | FTDouble
           | FTArray FType
 deriving (Show)

data FValue = FVInt Int
            | FVRational Rational
            | FVFloat Float
            | FVDouble Double
            | FVArray (M.Map [Int] FValue)
  deriving (Show)

data Range = Range {_rangeMetadata :: Metadata, _rangeOffset :: Rational, _rangeLower :: Int, _rangeUpper :: Int}

instance Show Range where
  show (Range _ o l u) = printf "%s..%s" (pprRational $ o+fromIntegral l) (pprRational $ o+fromIntegral u)
