{-|
Module      : Formura.Interpreter.Grid
Description : Haskell interpreter's grid semantics
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

Grid object with rational offset, to interpret Formura semantics in Haskell.
-}


{-# LANGUAGE TemplateHaskell #-}


module Formura.Interpreter.Grid where

import           Control.Lens
import qualified Data.Vector as V

data GridValue a =
  GridValue
  { _gridContent :: V.Vector a
  , _gridOffset  :: [Rational]
  }

makeLenses ''GridValue

-- type TypeExpr = Lang '[ GridF Rational, TupleF, VectorF Int, FunTypeF , ElemTypeF ]
