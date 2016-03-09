{-# LANGUAGE ConstraintKinds, ImplicitParams, LambdaCase, TemplateHaskell #-}

module Main where

import           Cases (snakify)
import           Control.Concurrent (threadDelay)
import           Control.Lens
import           Data.Aeson.TH
import qualified Data.ByteString as BS
import qualified Data.Yaml as Y
import qualified Data.Yaml.Pretty as Y
import           Data.Text.Lens (packed)
import           GHC.IO.Exception (ExitCode)
import           System.Directory
import           System.FilePath ((</>))
import           System.IO
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

data WaitFile = WaitLocalFile FilePath
              | WaitRemoteFile FilePath

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
  , _idvFormuraVersion = "3aed540676dca114e9367ef1d94b0b3ca00ea8f4"
  , _idvSourcecodeURL = "https://raw.githubusercontent.com/nushio3/3d-mhd/c1901c5c8c0ebf711f84e3fefbdeb44fd94c97b1/src/3d-mhd.fmr"
  , _idvNumericalConfig = defaultNumericalConfig
  , _idvLocalWorkDir = Nothing
  , _idvLocalCodePaths = Nothing
  , _idvRemoteWorkDir = Nothing
  , _idvRemoteExecPath = Nothing
  , _idvRemoteOutputPath = Nothing
  , _idvImagePath = Nothing
  }


----------------------------------------------------------------
-- Utility Functions
----------------------------------------------------------------

cmd :: String -> IO ExitCode
cmd str = do
  hPutStrLn stderr str
  system str


getCompiler :: WithQBConfig => String -> IO FilePath
getCompiler gitKey = do
  absPath <- getCurrentDirectory
  let fn = cpath </>("formura-" ++ gitKey)
      cpath = absPath </> (?qbc ^. qbWorkDir) </> "compilers"
  cmd $ "mkdir -p " ++ cpath
  doesFileExist fn >>= \case
    True -> return fn
    False -> do
      withSystemTempDirectory "qb-codegen" $ \dir -> do
        withCurrentDirectory dir $ do
          putStrLn dir
          cmd $ "git clone /home/nushio/hub/formura ."
          cmd $ "git checkout " ++ gitKey
          cmd $ "stack install --local-bin-path ./bin"
          cmd $ "cp ./bin/formura " ++ fn
      return fn

codegen :: WithQBConfig => Individual -> IO Individual
codegen idv = do
  let git = ?qbc ^. qbLabNotePath
  codegenFn <- getCompiler $ idv ^. idvFormuraVersion
  absPath <- getCurrentDirectory
  withSystemTempDirectory "qb-codegen" $ \dir -> do
    withCurrentDirectory dir $ do
      cmd $ "wget " ++ idv ^. idvSourcecodeURL ++ " -O main.fmr"
      writeYaml "main.nc" $ idv ^. idvNumericalConfig



  return idv

compile :: Individual -> IO Individual
compile idv = return idv

benchmark :: Individual -> IO Individual
benchmark idv = return idv

visualize :: Individual -> IO Individual
visualize = return

writeYaml :: Y.ToJSON a => FilePath -> a -> IO ()
writeYaml fn obj = BS.writeFile fn $ Y.encodePretty (Y.setConfCompare compare Y.defConfig) obj

readYaml :: Y.FromJSON a => FilePath -> IO a
readYaml fn = do
  Y.decodeFileEither fn >>= \case
    Left msg -> do
      hPutStrLn stderr $ "When reading " ++ fn
      error $ Y.prettyPrintParseException msg
    Right x -> return x

main :: IO ()
main = do
  x <- doesFileExist qbConfigFilePath
  if not x then mainInit else mainServer

mainInit :: IO ()
mainInit = do
  cmd "mkdir -p .qb"
  writeYaml qbConfigFilePath qbDefaultConfig

mainServer :: IO ()
mainServer = do
  putStrLn "Qppy!"
  qbc0 <- readYaml qbConfigFilePath
  let ?qbc = qbc0

  writeYaml "izanagi.yaml" defaultIndividual

  _ <- codegen $ defaultIndividual

  return ()

{- note: to submit interactive job on greatwave:

 pjsub --interact -L node=4 -L elapse=2:00:00 -L rscunit=gwmpc

-}
