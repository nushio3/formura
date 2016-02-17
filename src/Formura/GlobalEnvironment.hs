{-# LANGUAGE TemplateHaskell #-}

module Formura.GlobalEnvironment where

import Control.Lens
import Data.Char (toUpper)

import Formura.Syntax
import Formura.Vec

data GlobalEnvironment = GlobalEnvironment {
  _dimension :: Int,
  _axesNames :: Vec IdentName
  }
                       deriving (Eq, Ord, Show)
makeClassy ''GlobalEnvironment


defaultGlobalEnvironment :: GlobalEnvironment
defaultGlobalEnvironment = GlobalEnvironment 0 $ Vec []

sample3Denvironment :: GlobalEnvironment
sample3Denvironment = GlobalEnvironment 3 $ Vec ["x","y","z"]


extentVariableNames :: Getter GlobalEnvironment (Vec IdentName)
extentVariableNames = axesNames . to (fmap (("N"++) . fmap toUpper))
