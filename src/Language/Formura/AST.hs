{-# LANGUAGE FlexibleInstances, FlexibleContexts, UndecidableInstances, GADTs, StandaloneDeriving, KindSignatures, TemplateHaskell #-}
module Language.Formura.AST where

import qualified Data.Map as M
import Data.Ratio

import Control.Lens
import Language.Formura.Parser
import Text.Trifecta
import Text.Printf

data FValue = FVInt Int
            | FVRational Rational
            | FVFloat Float
            | FVDouble Double
            | FVArray (M.Map [Int] FValue)
  deriving (Show)

data Range = Range {_rangeMetadata :: Metadata, _rangeLower :: Rational, _rangeSize :: Int}

instance Show Range where
  show (Range _ l s) = printf "%s..%s" (pprRational l) (pprRational $ l+fromIntegral s)

data TTree f a where
  Atom :: a -> TTree f a
  Cons :: TTree f (f a) -> TTree f a

instance (Show a) =>  Show (TTree [] a) where
  show (Atom x) = show x
  show (Cons x) = show x
