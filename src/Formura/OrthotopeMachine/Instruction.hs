{- |
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

A virtual machine with multidimensional vector instructions that operates on structured lattices, as described
in http://arxiv.org/abs/1204.4779 .
-}

{-# LANGUAGE DataKinds, DeriveFunctor, DeriveFoldable, DeriveTraversable, PatternSynonyms, ViewPatterns #-}

module Formura.OrthotopeMachine.Instruction where

import Control.Lens
import qualified Data.IntMap as G

import Formura.Language.Combinator
import Formura.Syntax (IdentName, OperatorF(..), ImmF(..), TypeExpr)
import Formura.Vec

-- | The functor for orthotope machine-specific instructions. Note that arithmetic operations are outsourced.

data GridInstF x
  = LoadF IdentName
  | StoreF IdentName x
  | LoadIndexF Int
  | LoadExtentF Int
  | ShiftF (Vec Int) x
  deriving (Eq, Ord, Show, Functor, Foldable, Traversable)


-- | smart patterns
pattern Load n <- ((^? match) -> Just (LoadF n)) where
  Load n = match # LoadF n
pattern Store n x <- ((^? match) -> Just (StoreF n x)) where
  Store n x = match # StoreF n x
pattern LoadIndex n <- ((^? match) -> Just (LoadIndexF n)) where
  LoadIndex n = match # LoadIndexF n
pattern LoadExtent n <- ((^? match) -> Just (LoadExtentF n)) where
  LoadExtent n = match # LoadExtentF n
pattern Shift v x <- ((^? match) -> Just (ShiftF v x)) where
  Shift v x = match # ShiftF v x

type OMInstF = Sum '[GridInstF, OperatorF, ImmF]
type OMInst  = Fix OMInstF
