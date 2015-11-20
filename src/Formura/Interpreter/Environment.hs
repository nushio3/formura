{-# LANGUAGE TemplateHaskell #-}

module Formura.Interpreter.Environment where

import           Control.Lens
import qualified Data.Map as M

data Environment =
  Environment
  { _envDimension :: Int
  , _envExtent :: [Int]
  , _envBinding :: M.Map IdentName TypedValue
  }

makeLenses ''Environment
