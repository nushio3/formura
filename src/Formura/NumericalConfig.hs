{-# LANGUAGE TemplateHaskell #-}

module Formura.NumericalConfig where

import Control.Lens

import Formura.Vec

-- |  Configuration for distributed parallel code generation.
data NumericalConfig = NumericalConfig
  { _ncIntraNodeShape :: Vec Int
  , _ncMPIGridShape :: Vec Int
  , _ncTemporalBlockingInterval :: Int
  , _ncMonitorInterval :: Int
  }
makeClassy ''NumericalConfig

defaultNumericalConfig :: NumericalConfig
defaultNumericalConfig = NumericalConfig 0 0 0 0
