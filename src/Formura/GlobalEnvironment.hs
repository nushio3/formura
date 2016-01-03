{-# LANGUAGE TemplateHaskell #-}

module Formura.GlobalEnvironment where

import Control.Lens

import Formura.Syntax

data GlobalEnvironment = GlobalEnvironment {
  _dimension :: Int,
  _axesNames :: [IdentName]
  }
                       deriving (Eq, Ord, Show)

defaultGlobalEnvironment :: GlobalEnvironment
defaultGlobalEnvironment = GlobalEnvironment 0 []

makeClassy ''GlobalEnvironment
