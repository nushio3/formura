{-# LANGUAGE ConstraintKinds, ImplicitParams, LambdaCase, TemplateHaskell #-}

module Main where

import           Cases (snakify)
import           Control.Concurrent
import qualified Control.Exception as C
import           Control.Lens
import           Control.Monad.State
import           Data.Aeson.TH
import qualified Data.ByteString as BS
import           Data.List (isPrefixOf)
import qualified Data.Map as M
import           Data.Maybe
import           Data.Time
import qualified Data.Yaml as Y
import qualified Data.Yaml.Pretty as Y
import           Data.Text.Lens (packed)
import           System.Directory
import           System.Exit
import           System.FilePath ((</>))
import           System.FilePath.Lens
import           System.IO
import           System.IO.Temp
import           System.IO.Unsafe
import           System.Process

import           Formura.NumericalConfig

----------------------------------------------------------------
-- External Functions Utilities
----------------------------------------------------------------

cmd :: String -> IO ExitCode
cmd str = do
  hPutStrLn stderr str
  system str

-- copy remote file/local file/url from one another
superCopy :: FilePath -> FilePath -> IO ()
superCopy src dest = do
  let isUrl = or [x `isPrefixOf` src | x <- ["http://", "https://", "ftp://"]]
      go :: (String -> IO ()) -> IO ()
      go k
        | isUrl = withSystemTempFile "tmp" $ \fn h -> do
            hClose h
            cmd $ "wget " ++ src ++ " -O " ++ fn
            k fn
        | otherwise = k src
  go $ \fn -> do
    cmd $ unwords ["scp", fn, dest]
    return ()

writeYaml :: Y.ToJSON a => FilePath -> a -> IO ()
writeYaml fn obj = BS.writeFile fn $ Y.encodePretty (Y.setConfCompare compare Y.defConfig) obj

readYaml :: Y.FromJSON a => FilePath -> IO (Maybe a)
readYaml fn = do
  Y.decodeFileEither fn >>= \case
    Left msg -> do
      hPutStrLn stderr $ "When reading " ++ fn ++ "\n" ++ Y.prettyPrintParseException msg
      return Nothing
    Right x -> return $ Just x

readCmd :: String -> IO String
readCmd str = interactCmd str ""

interactCmd
    :: String                   -- ^ shell command to run
    -> String                   -- ^ standard input
    -> IO String                -- ^ stdout + stderr
interactCmd cmdstr input = do
    (Just inh, Just outh, _, pid) <-
        createProcess (shell cmdstr){ std_in  = CreatePipe,
                                      std_out = CreatePipe,
                                      std_err = Inherit }

    -- fork off a thread to start consuming the output
    output  <- hGetContents outh
    outMVar <- newEmptyMVar
    forkIO $ C.evaluate (length output) >> putMVar outMVar ()

    -- now write and flush any input
    when (not (null input)) $ do hPutStr inh input; hFlush inh
    hClose inh -- done with stdin

    -- wait on the output
    takeMVar outMVar
    hClose outh

    -- wait on the process
    ex <- waitForProcess pid

    case ex of
     ExitSuccess   -> return output
     ExitFailure r ->
      error ("readSystem: " ++ cmdstr ++ " (exit " ++ show r ++ ")")



----------------------------------------------------------------
-- Incubator Datatypes
----------------------------------------------------------------


data Action = Codegen
            | Compile
            | Benchmark
            | Visualize
            | Done
            | Failed
              deriving (Eq, Ord, Show, Read)

deriveJSON defaultOptions ''Action

data WaitFile = WaitLocalFile FilePath
              | WaitRemoteFile FilePath
              deriving (Eq, Ord, Show, Read)

data QBConfig =
  QBConfig
  { _qbHostName :: String
  , _qbWorkDir :: String
  , _qbLabNotePath :: String
  }

makeClassy ''QBConfig

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
  , _qbLabNotePath = "/home/nushio/hub/3d-mhd/individuals"}

type WithQBConfig = ?qbc :: QBConfig

data Individual =
  Individual
  { _idvFormuraVersion :: String
  , _idvSourcecodeURL :: String
  , _idvNumericalConfig :: NumericalConfig
  , _idvCompilerFlags :: String
  } deriving (Eq, Ord, Read, Show)

makeClassy ''Individual

$(deriveJSON (let toSnake = packed %~ snakify in
               defaultOptions{fieldLabelModifier = toSnake . drop 4,
                              constructorTagModifier = toSnake,
                              omitNothingFields = True})
  ''Individual)

defaultIndividual :: Individual
defaultIndividual = Individual
  { _idvFormuraVersion = "3aed540676dca114e9367ef1d94b0b3ca00ea8f4"
  , _idvSourcecodeURL = "/home/nushio/hub/formura/examples/3d-mhd.fmr"
  , _idvNumericalConfig = unsafePerformIO $ fromJust <$> readYaml "/home/nushio/hub/formura/examples/3d-mhd.nc"
  , _idvCompilerFlags = []
  }


data Experiment =
  Experiment
  { _xpAction :: Action
  , _xpIndividualName :: String
  , _xpLocalWorkDir :: String
  , _xpLocalCodePaths :: [String]
  , _xpRemoteWorkDir :: String
  , _xpRemoteExecPath :: String
  , _xpRemoteOutputPath :: String
  , _xpImagePath :: String
  , _xpTimeStamps :: [(UTCTime,Action)]
  } deriving (Eq, Ord, Read, Show)

makeClassy ''Experiment

$(deriveJSON (let toSnake = packed %~ snakify in
               defaultOptions{fieldLabelModifier = toSnake . drop 4,
                              constructorTagModifier = toSnake,
                              omitNothingFields = True})
  ''Experiment)

defaultExperiment :: Experiment
defaultExperiment = Experiment
  { _xpAction = Codegen
  , _xpIndividualName = "default"
  , _xpLocalWorkDir = "/home/nushio/hub/formura-rawdata/"
  , _xpLocalCodePaths = [""]
  , _xpRemoteWorkDir = ""
  , _xpRemoteExecPath = ""
  , _xpRemoteOutputPath = ""
  , _xpImagePath = ""
  , _xpTimeStamps = []
  }


data IndExp = IndExp Individual Experiment
            deriving (Eq, Ord, Show, Read)

instance HasIndividual IndExp where
  individual f (IndExp i x) = (\i -> IndExp i x) <$> f i
instance HasExperiment IndExp where
  experiment f (IndExp i x) = (\x -> IndExp i x) <$> f x


data IncubatorState =
  IncubatorState
  { _qbConfig :: QBConfig
  , _qbIndividual :: Individual}

makeClassy ''IncubatorState

instance HasQBConfig IncubatorState where
  qBConfig = qbConfig

instance HasIndividual IncubatorState where
  individual = qbIndividual


----------------------------------------------------------------
-- Incubator functions
----------------------------------------------------------------

readIndExp :: FilePath -> IO (Maybe IndExp)
readIndExp fn = do
  readYaml fn >>= \case
    Nothing -> return Nothing
    Just idv0 -> do
      let xpfn = fn & extension .~ "exp"
      xp0 <- maybe defaultExperiment id <$> readYaml xpfn
      let xp1 = xp0
            { _xpLocalWorkDir = fn ^. directory
            }
      return $ Just $ IndExp idv0 xp1

getCodegen :: WithQBConfig => String -> IO FilePath
getCodegen gitKey = do
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

codegen :: WithQBConfig => IndExp -> IO IndExp
codegen it = do
  let labNote = ?qbc ^. qbLabNotePath
      workDir = it ^. xpLocalWorkDir
  cmd $ "mkdir -p " ++ workDir
  codegenFn <- getCodegen $ it ^. idvFormuraVersion
  withCurrentDirectory workDir $ do
    superCopy (it ^. idvSourcecodeURL) "main.fmr"
    writeYaml "main.nc" $ it ^. idvNumericalConfig
    cmd $ codegenFn ++ " main.fmr"
  return $ it & xpAction .~ Compile

compile :: IndExp -> IO IndExp
compile idv = return idv

benchmark :: IndExp -> IO IndExp
benchmark idv = return idv

visualize :: IndExp -> IO IndExp
visualize = return


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
  Just qbc0 <- readYaml qbConfigFilePath
  let ?qbc = qbc0 :: QBConfig
  let noteDir = ?qbc ^. qbLabNotePath
  findIdvs <- readCmd $ "find " ++ noteDir ++ " -name '*.idv'"
  let idvFns = lines findIdvs

  idxps <- catMaybes <$> mapM readIndExp idvFns

  mapM_ proceed idxps

  return ()

proceed :: IndExp -> IO ()
proceed idxp = do
  print idxp

{- note: to submit interactive job on greatwave:

 pjsub --interact -L node=4 -L elapse=2:00:00 -L rscunit=gwmpc

-}
