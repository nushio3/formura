{-# LANGUAGE TemplateHaskell #-}

module Formura.GlobalEnvironment where

import Control.Lens
import Data.Char (toUpper)

import Formura.Syntax
import Formura.Vec

data GlobalEnvironment = GlobalEnvironment {
  _dimension :: Int,
  _axesNames :: [IdentName]
  }
                       deriving (Eq, Ord, Show)
makeClassy ''GlobalEnvironment


defaultGlobalEnvironment :: GlobalEnvironment
defaultGlobalEnvironment = GlobalEnvironment 0 []

sample3Denvironment :: GlobalEnvironment
sample3Denvironment = GlobalEnvironment 3 ["x","y","z"]


extentVariableNames :: Getter GlobalEnvironment [IdentName]
extentVariableNames = axesNames . to (map (("N"++) . map toUpper))
