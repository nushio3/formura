{-|
Module      : Formura.Interpreter.Value
Description : Haskell interpreter's value semantics
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

Grid object with rational offset, to interpret Formura semantics in Haskell.
-}


{-# LANGUAGE DataKinds, DeriveFunctor, DeriveFoldable,
DeriveTraversable, PatternSynonyms, TemplateHaskell, ViewPatterns #-}

module Formura.Interpreter.Value where

import           Control.Lens
import qualified Data.Vector as V

import           Formura.Language.Combinator
import           Formura.Syntax

newtype ElemValueF x = ElemValueF Double
                 deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

pattern ElemValue x <- ((^? match) -> Just (ElemValueF x)) where ElemValue x = match # ElemValueF x


data FunValueF x = FunValueF LExpr RExpr
                 deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

data VectorValueF x =
  VectorValueF
  { _vectorContent :: V.Vector x
  }
                 deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

data GridValueF x =
  GridValueF
  { _gridOffset  :: [Rational]
  , _gridContent :: V.Vector x
  }
                 deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

makeLenses ''GridValueF

type ValueExpr = Lang '[ GridValueF, TupleF, VectorValueF,  FunValueF, ElemValueF ]

type TypedValue = (ValueExpr, TypeExpr)
