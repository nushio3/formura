{-|
Module      : Language.Formura.Syntax
Description : formura syntax elements
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

Components for syntatic elements of formura.
-}

{-# LANGUAGE DeriveFunctor, DeriveFoldable, DeriveGeneric,
DeriveTraversable, FlexibleContexts, FlexibleInstances,
PatternSynonyms, ViewPatterns #-}

module Language.Formura.Syntax where

import Control.Lens
import GHC.Generics

import Language.Combinator


-- * Tuple

-- | The functor for tuple.
data TupleF x = TupleF [x]
             deriving (Eq, Ord, Functor, Foldable, Traversable, Generic)
instance Show x => Show (TupleF x) where
  show (TupleF xs) = let c '[' = '('
                         c ']' = ')'
                         c x   = x
                     in map c $ show xs
-- | specialized prism
tuple :: MatchPrism TupleF
tuple = match

-- | smart patterns
pattern Tuple xs <- ((^? tuple) -> Just (TupleF xs)) where
  Tuple xs = tuple # TupleF xs
