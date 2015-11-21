{-# LANGUAGE TemplateHaskell #-}

module Formura.Interpreter.Environment where

import           Control.Lens
import qualified Data.Map as M

import           Formura.Syntax
import           Formura.Interpreter.Value

data Environment =
  Environment
  { _envDimension :: Int
  , _envExtent :: [Int]
  , _envBinding :: M.Map IdentName TypedValue
  }

makeLenses ''Environment
