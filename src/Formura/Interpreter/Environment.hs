{-# LANGUAGE TemplateHaskell #-}

module Formura.Interpreter.Environment where

import Control.Lens

data Environment =
  Environment
  { _envDimension :: Int
  , _envExtent :: [Int]
  }

makeLenses ''Environment
