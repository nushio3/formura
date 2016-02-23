{-# LANGUAGE TemplateHaskell #-}

module Formura.NumericalConfig where

import           Cases (snakify)
import           Control.Lens
import           Data.Aeson.TH
import           Data.Char
import qualified Data.Map as M
import           Data.Text.Lens (packed)

import Formura.Vec

-- |  Configuration for distributed parallel code generation.
data NumericalConfig = NumericalConfig
  { _ncIntraNodeShape :: Vec Int
  , _ncMPIGridShape :: Vec Int
  , _ncTemporalBlockingInterval :: Int
  , _ncMonitorInterval :: Int
  , _ncInitialWalls :: M.Map String [Int]
  , _ncWallInverted :: Maybe Bool
  }
makeClassy ''NumericalConfig


$(deriveJSON (let toSnake = packed %~ snakify in
               defaultOptions{fieldLabelModifier = toSnake . drop 3,
                              constructorTagModifier = toSnake,
                              omitNothingFields = True})
  ''NumericalConfig)

defaultNumericalConfig :: NumericalConfig
defaultNumericalConfig =
  NumericalConfig
  { _ncIntraNodeShape = 0
  , _ncMPIGridShape = 0
  , _ncTemporalBlockingInterval = 1
  , _ncMonitorInterval = 1
  , _ncInitialWalls = M.empty
  , _ncWallInverted = Nothing
     }


sampleNumericalConfig :: NumericalConfig
sampleNumericalConfig =
  NumericalConfig
  { _ncIntraNodeShape = Vec [128, 64, 32]
  , _ncMPIGridShape = Vec [5, 20, 40]
  , _ncTemporalBlockingInterval = 4
  , _ncMonitorInterval = 28
  , _ncInitialWalls = M.fromList [("x",[66]), ("y", [34]), ("z", [12,22]) ]
  , _ncWallInverted = Nothing
     }
