{-# LANGUAGE TemplateHaskell #-}

module Formura.GlobalEnvironment where

import Control.Lens
import Data.Char (toUpper)

import Formura.Syntax
import Formura.Vec
import Formura.NumericalConfig

data GlobalEnvironment = GlobalEnvironment {
  _dimension :: Int,
  _axesNames :: Vec IdentName,
  _envNumericalConfig :: NumericalConfig
  }
                       deriving (Eq, Ord, Show)
makeClassy ''GlobalEnvironment


defaultGlobalEnvironment :: GlobalEnvironment
defaultGlobalEnvironment = GlobalEnvironment 0 (Vec []) defaultNumericalConfig

sample3Denvironment :: GlobalEnvironment
sample3Denvironment = GlobalEnvironment 3 (Vec ["x","y","z"]) defaultNumericalConfig


extentVariableNames :: Getter GlobalEnvironment (Vec IdentName)
extentVariableNames = axesNames . to (fmap (("N"++) . fmap toUpper))
