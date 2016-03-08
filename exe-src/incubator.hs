{-# LANGUAGE ConstraintKinds, ImplicitParams, TemplateHaskell #-}

module Main where

import           Cases (snakify)
import           Control.Lens
import           Data.Aeson.TH
import qualified Data.Yaml as Y
import           Data.Text.Lens (packed)

import           Formura.NumericalConfig

data Task = Codegen
          | Compile
          | Benchmark
          | Visualize

data IncubatorConfig =
  IncubatorConfig
  { _qbHostName :: String
  , _qbWorkDir :: String
  , _qbLabNotePath :: String
  }

makeLenses ''IncubatorConfig

$(deriveJSON (let toSnake = packed %~ snakify in
               defaultOptions{fieldLabelModifier = toSnake . drop 3,
                              constructorTagModifier = toSnake,
                              omitNothingFields = True})
  ''IncubatorConfig)


type WithIncubatorConfig = ?qbc :: IncubatorConfig

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

$(deriveJSON (let toSnake = packed %~ snakify in
               defaultOptions{fieldLabelModifier = toSnake . drop 4,
                              constructorTagModifier = toSnake,
                              omitNothingFields = True})
  ''Individual)


codegen :: WithIncubatorConfig => Individual -> IO Individual
codegen idv = do
  let git = ?qbc ^. qbLabNotePath
  return idv

compile :: Individual -> IO Individual
compile idv = return idv

benchmark :: Individual -> IO Individual
benchmark idv = return idv

visualize :: Individual -> IO Individual
visualize = return

main :: IO ()
main = do

  putStrLn "Qppy!"

{- note: to submit interactive job on greatwave:

 pjsub --interact -L node=4 -L elapse=2:00:00 -L rscunit=gwmpc


-}
