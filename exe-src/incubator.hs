{-# LANGUAGE ConstraintKinds, ImplicitParams, LambdaCase, TemplateHaskell #-}

module Main where

import           Cases (snakify)
import           Control.Lens
import           Data.Aeson.TH
import qualified Data.ByteString as BS
import qualified Data.Yaml as Y
import qualified Data.Yaml.Pretty as Y
import           Data.Text.Lens (packed)
import           System.Directory
import           System.FilePath ((</>))
import           System.IO.Temp (withSystemTempDirectory)
import           System.Process
import           Formura.NumericalConfig

data Action = Codegen
            | Compile
            | Benchmark
            | Visualize
            | Done
            | Failed

deriveJSON defaultOptions ''Action


data QBConfig =
  QBConfig
  { _qbHostName :: String
  , _qbWorkDir :: String
  , _qbLabNotePath :: String
  }

makeLenses ''QBConfig

$(deriveJSON (let toSnake = packed %~ snakify in
               defaultOptions{fieldLabelModifier = toSnake . drop 3,
                              constructorTagModifier = toSnake,
                              omitNothingFields = True})
  ''QBConfig)


qbConfigFilePath :: FilePath
qbConfigFilePath = ".qb/config"

qbDefaultConfig = QBConfig
  { _qbHostName = "greatwave"
  , _qbWorkDir = ".qb/work"
  , _qbLabNotePath = "/home/nushio/hub/3d-mhd/log"}

type WithQBConfig = ?qbc :: QBConfig

data Individual =
  Individual
  { _idvAction :: Action
  , _idvName :: String
  , _idvFormuraVersion :: String
  , _idvSourcecodeURL :: String
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

defaultIndividual :: Individual
defaultIndividual = Individual
  { _idvAction = Codegen
  , _idvName = "default"
  , _idvFormuraVersion = "c87433a2"
  , _idvSourcecodeURL = "https://raw.githubusercontent.com/nushio3/3d-mhd/c1901c5c8c0ebf711f84e3fefbdeb44fd94c97b1/src/3d-mhd.fmr"
  , _idvNumericalConfig = defaultNumericalConfig
  , _idvLocalWorkDir = Nothing
  , _idvLocalCodePaths = Nothing
  , _idvRemoteWorkDir = Nothing
  , _idvRemoteExecPath = Nothing
  , _idvRemoteOutputPath = Nothing
  , _idvImagePath = Nothing
  }


getCompiler :: WithQBConfig => String -> IO FilePath
getCompiler gitkey = do
  let fn = (?qbc ^. qbWorkDir) </> ("formura-" ++ gitkey)
  doesFileExist fn >>= \case
    True -> return fn
    False -> do
      withSystemTempDirectory "qb-codegen" $ \ dir -> do
        return fn

codegen :: WithQBConfig => Individual -> IO Individual
codegen idv = do
  let git = ?qbc ^. qbLabNotePath
  return idv

compile :: Individual -> IO Individual
compile idv = return idv

benchmark :: Individual -> IO Individual
benchmark idv = return idv

visualize :: Individual -> IO Individual
visualize = return

writeYaml :: Y.ToJSON a => FilePath -> a -> IO ()
writeYaml fn obj = BS.writeFile fn $ Y.encodePretty (Y.setConfCompare compare Y.defConfig) obj

main :: IO ()
main = do
  x <- doesFileExist qbConfigFilePath
  if not x then do
    system "mkdir -p .qb"
    writeYaml qbConfigFilePath qbDefaultConfig
  else do
    putStrLn "Qppy!"
    writeYaml "izanagi.yaml" defaultIndividual


{- note: to submit interactive job on greatwave:

 pjsub --interact -L node=4 -L elapse=2:00:00 -L rscunit=gwmpc

-}
