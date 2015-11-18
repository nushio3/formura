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
