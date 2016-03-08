{-# LANGUAGE ConstraintKinds, ImplicitParams, TemplateHaskell #-}

module Main where

import Control.Lens
import Formura.NumericalConfig

data Task = Codegen
          | Compile
          | Benchmark
          | Visualize

data IncubatorConfig =
  IncubatorConfig
  { _icHostName :: String
  , _icWorkDir :: String
  , _icLabNotePath :: String
  }

makeLenses ''IncubatorConfig

type WithIncubatorConfig = ?icc :: IncubatorConfig

data Individual =
  Individual
  { _idvName
  , _idvFormuraVersion :: String
  , _idvFourcecodeURL :: String
  , _idvNumericalConfig :: NumericalConfig
  , _idvLocalWorkDir :: Maybe String
  , _idvLocalCodePaths :: Maybe [String]
  , _idvRemoteWorkDir :: Maybe String
  , _idvRemoteExecPath :: Maybe String
  , _idvRemoteOutputPath :: Maybe String
  , _idvImagePath :: Maybe String
  }

makeLenses ''Individual

codegen :: WithIncubatorConfig => Individual -> IO Individual
codegen idv = do
  let git = ?icc ^. icLabNotePath
  return idv

compile :: Individual -> IO Individual
compile idv = return idv

benchmark :: Individual -> IO Individual
benchmark idv = return idv

visualize :: Individual -> IO Individual
visualize = return

main :: IO ()
main = putStrLn "Qppy!"
