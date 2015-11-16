{-# LANGUAGE TemplateHaskell #-}
module Formura.Interpreter.Grid where

import           Control.Lens
import qualified Data.Vector as V

data GridValue a =
  GridValue
  { _content :: V.Vector a
  , _offset  :: [Rational]
  }
