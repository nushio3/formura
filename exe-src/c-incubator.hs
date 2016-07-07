{-# LANGUAGE ConstraintKinds, ImplicitParams, LambdaCase, MultiWayIf, OverloadedStrings, TemplateHaskell #-}


module Main where

import           Cases (snakify)
import           Control.Concurrent
import qualified Control.Exception as C
import           Control.Lens
import           Control.Monad.State
import           Data.Aeson.TH
import qualified Data.ByteString as BS
import           Data.Foldable
import qualified Data.HashMap.Strict as HM
import           Data.List (isPrefixOf, sort, intercalate, isInfixOf)
import qualified Data.Map as M
import           Data.Maybe
import qualified Data.Set as S
import           Data.Time
import qualified Data.Yaml as Y
import qualified Data.Yaml.Pretty as Y
import qualified Data.Text as T
import qualified Data.Text.Lens as T (packed)
import           System.Directory
import           System.Environment
import           System.Exit
import           System.FilePath ((</>))
import           System.FilePath.Lens
import           System.IO
import           System.IO.Temp
import           System.IO.Unsafe
import           System.Process
import           System.Random.Shuffle(shuffleM)
import           Text.Printf
import           Formura.NumericalConfig
import           Formura.Utilities


----------------------------------------------------------------
-- Incubator Datatypes
----------------------------------------------------------------

type WaitList = [([FilePath], Action)]

data Action = Codegen
            | Compile
            | Benchmark
            | Visualize
            | Wait Action WaitList -- Wait for certain files to appear, then transit to next action
            | Done
            | Failed Action
              deriving (Eq, Ord, Show, Read)

deriveJSON defaultOptions ''Action


data QBConfig =
  QBConfig
  { _qbHostName :: String
  , _qbWorkDir :: String
  , _qbLabNotePath :: String
  , _qbRemoteLabNotePath :: String
  }

makeClassy ''QBConfig

$(deriveJSON (let toSnake = T.packed %~ snakify in
               defaultOptions{fieldLabelModifier = toSnake . drop 3,
                              constructorTagModifier = toSnake,
                              omitNothingFields = True})
  ''QBConfig)


qbConfigFilePath :: FilePath
qbConfigFilePath = ".qb/config"

qbDefaultConfig = QBConfig
  { _qbHostName = "K"
  , _qbWorkDir = ".qb/"
  , _qbLabNotePath = "/home/nushio/hub/3d-mhd/individuals"
  , _qbRemoteLabNotePath = "/volume81/data/ra000008/nushio/individuals"}

type WithQBConfig = ?qbc :: QBConfig

data Individual =
  Individual
  { _idvFormuraVersion :: String
  , _idvFmrSourcecodeURL :: String
  , _idvCppSourcecodeURL :: String
  , _idvBaseFilename :: String
  , _idvNumericalConfig :: NumericalConfig
  , _idvCompilerFlags :: [String]
  } deriving (Eq, Ord, Read, Show)

makeClassy ''Individual

$(deriveJSON (let toSnake = T.packed %~ snakify in
               defaultOptions{fieldLabelModifier = toSnake . drop 4,
                              constructorTagModifier = toSnake,
                              omitNothingFields = True})
  ''Individual)

defaultIndividual :: Individual
defaultIndividual = Individual
  { _idvFormuraVersion = "2f8eb9c50669914e17ba24105380d0f4f631ea59"
  , _idvFmrSourcecodeURL = "/home/nushio/hub/formura/examples/3d-mhd.fmr"
  , _idvCppSourcecodeURL = "/home/nushio/hub/formura/examples/3d-mhd-main-prof.cpp"
  , _idvBaseFilename = "3d-sim.fmr"
  , _idvNumericalConfig = defNC
  , _idvCompilerFlags = ["-O3", "-Kfast,parallel", "-Kocl", "-Klib", "-Koptmsg=2", "-Karray_private", "-Kinstance=8", "-Kdynamic_iteration", "-Kloop_fission", "-Kloop_part_parallel", "-Kloop_part_simd", "-Keval", "-Kreduction", "-Ksimd=2"]
  }
  where
    defNC = unsafePerformIO $ fromJust <$> readYamlDef defaultNumericalConfig "/home/nushio/hub/formura/examples/3d-mhd.yaml"

data Experiment =
  Experiment
  { _xpAction :: Action
  , _xpIndividualFilePath :: FilePath
  , _xpExperimentFilePath :: FilePath
  , _xpLocalWorkDir :: String
  , _xpLocalCodeDir :: String
  , _xpRemoteWorkDir :: String
  , _xpRemoteExecPath :: String
  , _xpRemoteOutputPath :: String
  , _xpImagePath :: String
  , _xpTimeStamps :: [(UTCTime,UTCTime,Action)]
  , _xpFailureCounter :: Int
  } deriving (Eq, Ord, Read, Show)

makeClassy ''Experiment

$(deriveJSON (let toSnake = T.packed %~ snakify in
               defaultOptions{fieldLabelModifier = toSnake . drop 3,
                              constructorTagModifier = toSnake,
                              omitNothingFields = True})
  ''Experiment)

defaultExperiment :: Experiment
defaultExperiment = Experiment
  { _xpAction = Codegen
  , _xpIndividualFilePath = ""
  , _xpExperimentFilePath = ""
  , _xpLocalWorkDir = ""
  , _xpLocalCodeDir = ""
  , _xpRemoteWorkDir = ""
  , _xpRemoteExecPath = ""
  , _xpRemoteOutputPath = ""
  , _xpImagePath = ""
  , _xpTimeStamps = []
  , _xpFailureCounter = 0
  }


data IndExp = IndExp Individual Experiment
            deriving (Eq, Ord, Show, Read)

instance HasIndividual IndExp where
  individual f (IndExp i x) = (\i -> IndExp i x) <$> f i
instance HasExperiment IndExp where
  experiment f (IndExp i x) = (\x -> IndExp i x) <$> f x
instance HasNumericalConfig IndExp where
  numericalConfig = individual . idvNumericalConfig



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

remoteCmd :: WithQBConfig => String -> IO ExitCode
remoteCmd str = do
  let host = ?qbc ^. qbHostName
  cmd $ "ssh " ++ host ++ " '(" ++ str ++ ")'"


readIndExp :: FilePath -> IO (Maybe IndExp)
readIndExp fn = do
  readYamlDef defaultIndividual fn >>= \case
    Nothing -> return Nothing
    Just idv0 -> do
      let xpfn = fn & extension .~ "exp"
      xp0 <- maybe defaultExperiment id <$> readYamlDef defaultExperiment xpfn
      let xp1 = xp0
            { _xpLocalWorkDir = fn ^. directory
            , _xpIndividualFilePath = fn
            , _xpExperimentFilePath = xpfn
            }
      return $ Just $ IndExp idv0 xp1

writeIndExp :: IndExp -> IO ()
writeIndExp it = do
  -- Do not alter individual:
  -- writeYaml (it ^. xpIndividualFilePath) (it ^. individual)
  writeYaml (it ^. xpExperimentFilePath) (it ^. experiment)

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
          x <- cmd $ "git clone git@github.com:nushio3/formura ."
          case x of
            ExitFailure _ -> do
              cmd $ "git clone /home/nushio/hub/formura ."
              return ()
            _ -> return ()
          cmd $ "git checkout " ++ gitKey
          cmd $ "stack install --local-bin-path ./bin"
          cmd $ "cp ./bin/formura " ++ fn
      return fn

codegen :: WithQBConfig => IndExp -> IO IndExp
codegen it = do
  let labNote = ?qbc ^. qbLabNotePath
      codeDir = it ^. xpLocalWorkDir </> "src"
  cmd $ "mkdir -p " ++ codeDir
  codegenFn <- getCodegen $ it ^. idvFormuraVersion
  withCurrentDirectory codeDir $ do
    cmd $ "rm *.c *.cpp *.h *.out"
    let fnBase = it ^. idvBaseFilename . basename
    superCopy (it ^. idvFmrSourcecodeURL) (fnBase ++ ".fmr")
    superCopy (it ^. idvCppSourcecodeURL) (fnBase ++ "-main.cpp")
    writeYaml (fnBase ++ ".yaml") $ it ^. idvNumericalConfig
    forM_ ["*.idv", fnBase ++ ".fmr", fnBase ++ ".yaml", fnBase ++ "-main.cpp"] $ \fn -> do
      cmd $ "git add " ++ fn
    --cmd $ "git commit -m 'incubation in progress'"
    cmd $ codegenFn ++ " " ++ fnBase ++ ".fmr"
    foundFiles <- fmap (sort . lines) $ readCmd $ "find ."
    let csrcFiles =
          [fn | fn <- foundFiles, fn ^. extension == ".cpp"] ++
          [fn | fn <- foundFiles, fn ^. extension == ".c"]
        objFiles = [fn & extension .~ "o"  |fn <- csrcFiles]

        c2oCmd fn = unlines
          [ (fn & extension .~ "o") ++ ": " ++ fn
          , "\t$(CC) -c $^ -o $@ 2> $@.optmsg"]

    writeFile "Makefile" $ unlines
      [ "all: a.out"
      , "CC=mpiFCC " ++ unwords (it ^. idvCompilerFlags)
      , "OBJS=" ++ unwords objFiles
      , "a.out: $(OBJS)"
      , "\t$(CC) $(OBJS) -o a.out"
      , unlines $ map c2oCmd csrcFiles]
    writeFile "make.sh" $ unlines
      [ "#!/bin/sh -x"
      , "#PJM --rsc-list \"node=1\""
      , ""
      , "#time limit"
      , "#PJM --name \"C" ++ (it ^. xpLocalWorkDir . filename) ++ "\""
      , "#PJM --rsc-list \"elapse=0:30:00\""
      , "#PJM --rsc-list \"rscgrp=small\""
      , "#PJM --mpi \"use-rankdir\""
      , "#PJM --stg-transfiles all"
      , ""
      , "#PJM --stgin \"./src/* %r:./src/\""
      , "#PJM --stgout \"%r:./src/* ./src/\""
      , ""
      , "# config environmental variables"
      , ". /work/system/Env_base"
      , "cd src"
      , "make -j8"
      , "make -j4"
      , "make -j2"
      , "make"
      , "touch make.done"]
    cmd "chmod 755 make.sh"
  return $ it
    & xpAction .~ Compile
    & xpLocalCodeDir .~ codeDir

compile :: WithQBConfig => IndExp -> IO IndExp
compile it = do
  let
      exeDir = it ^. xpLocalWorkDir
      localLN  = ?qbc ^. qbLabNotePath
      remoteLN = ?qbc ^. qbRemoteLabNotePath
      host = ?qbc ^. qbHostName
  let srcdir = it ^. xpLocalCodeDir
  let remotedir = srcdir & T.packed %~ T.replace (T.pack localLN) (T.pack remoteLN)
  let remoteExeDir = exeDir & T.packed %~ T.replace (T.pack localLN) (T.pack remoteLN)
  remoteCmd $ "mkdir -p " ++ remotedir
  cmd $ "rsync -avz " ++ (srcdir++"/") ++ " " ++ (?qbc^.qbHostName++":"++remotedir++"/")
  remoteCmd $ "cd " ++ remotedir ++  "; rm *.o ./a.out make.done"
  remoteCmd $ "cd " ++ remoteExeDir ++  "; rm C*.o* C*.e*"
  remoteCmd $ "cd " ++ remoteExeDir ++  "; ksub src/make.sh"

  let resultFiles = [kpath ++ pat | pat <- ["C*.o*", "C*.e*"]]
      kpath = ?qbc^.qbHostName++":"++remoteExeDir++"/"

  return $ it
    & xpAction .~ Wait Compile
    [ ([host ++ ":" ++ remotedir ++ "/a.out"], Benchmark)
    , (resultFiles, Failed Compile)]
--    , ([host ++ ":" ++ remotedir ++ "/make.done"], Failed Compile)]

extensionNSet :: [Int]
extensionNSet = unsafePerformIO $ do
  argv <- getArgs
  return $ if "--extend" `elem` argv then [1..8] else [3]

benchmark :: WithQBConfig => IndExp -> IO IndExp
benchmark it = do
  argv <- getArgs
  let csvMode = "--csv" `elem` argv -- Generate csv for Fujitsu XLS

  let labNote = ?qbc ^. qbLabNotePath
      exeDir = it ^. xpLocalWorkDir
      mpiSize :: Int
      mpiSize = product $ it ^. ncMPIGridShape

      mpiNodeShape :: String
      mpiNodeShape = intercalate "x" $ map show $ reverse $ toList $ it ^. ncMPIGridShape
  let
      localLN  = ?qbc ^. qbLabNotePath
      remoteLN = ?qbc ^. qbRemoteLabNotePath
      host = ?qbc ^. qbHostName


  let remotedir = exeDir & T.packed %~ T.replace (T.pack localLN) (T.pack remoteLN)
      rscgrp ::String
      rscgrp
        | product (it ^. ncMPIGridShape) > 36864  = "huge"
        | product (it ^. ncMPIGridShape) > 384    = "large"
        | otherwise = "small"
  withCurrentDirectory exeDir $ do
    writeFile "submit.sh" $ unlines
      [ "#!/bin/sh -x"
      , printf "#PJM --rsc-list \"node=%s\""mpiNodeShape
      , printf "#PJM --mpi \"shape=%s\""mpiNodeShape
      , ""
      , "#time limit"
      , "#PJM --name \"B" ++ (it ^. xpLocalWorkDir . filename) ++ "\""
        -- for Pearson-3d benchmarks, the fastest benchmark takes only a few minutes
      , "#PJM --rsc-list \"elapse=1:00:00\""
      , printf "#PJM --rsc-list \"rscgrp=%s\"" rscgrp
      , "#PJM --mpi \"use-rankdir\""
      , "#PJM --stg-transfiles all"
      , ""
      , "# stage in  a.out."
      , "#PJM --stgin \"./src/a.out %r:./a.out\""
      , "#PJM --stgout \"%r:./out/* ./out/out-%r/\""
      , "#PJM --stgout \"%r:./prof-ip/* ./out/prof-ip/\""
      , "#PJM --stgout \"%r:./prof-01/* ./out/prof-01/\""
      , "#PJM --stgout \"%r:./prof-02/* ./out/prof-02/\""
      , "#PJM --stgout \"%r:./prof-03/* ./out/prof-03/\""
      , "#PJM --stgout \"%r:./prof-04/* ./out/prof-04/\""
      , "#PJM --stgout \"%r:./prof-05/* ./out/prof-05/\""
      , "#PJM --stgout \"%r:./prof-06/* ./out/prof-06/\""
      , "#PJM --stgout \"%r:./prof-07/* ./out/prof-07/\""
      , "#PJM --stgout \"%r:./prof-C/* ./out/prof-C/\""
      , "#PJM --stgout \"%r:./prof-I/* ./out/prof-I/\""
      , "#PJM --stgout \"%r:./prof-M/* ./out/prof-M/\""
      , "#PJM --stgout \"%r:./prof-P/* ./out/prof-P/\""
      , "#PJM --stgout \"%r:./prof-S/* ./out/prof-S/\""
      , "#PJM --stgout \"%r:./prof-mpi/* ./out/prof-mpi/\""
      , unlines [printf "#PJM --stgout \"%%r:./prof-X%d/* ./out/prof-X%d/\"" n n
                |n <- extensionNSet]
      , ""
      , "#statistics output"
      , "#PJM -s"
      , ""
      , "# config environmental variables"
      , ". /work/system/Env_base"
      , "mpiexec /work/system/bin/msh \"mkdir ./out\""
      , ""
      , unlines [ printf "fapp -C -d prof-X%d -Hevent=Statistics  mpirun -n %d ./a.out %d %d" n mpiSize x x
                | n <- extensionNSet, let x = 8192 * 2^n::Integer]
      ,
        if not csvMode then "" else
          unlines
          [ printf "fapp -C -d prof-C -Hevent=Cache        mpirun -n %d ./a.out" mpiSize
          , printf "fapp -C -d prof-I -Hevent=Instructions mpirun -n %d ./a.out" mpiSize
          , printf "fapp -C -d prof-M -Hevent=MEM_access   mpirun -n %d ./a.out" mpiSize
          , printf "fapp -C -d prof-P -Hevent=Performance  mpirun -n %d ./a.out" mpiSize
          , printf "fipp -m 30000 -C -d prof-ip -Icall,hwm mpirun -n %d ./a.out" mpiSize
          , printf "fapp -C -d prof-01 -Hpa=1 mpirun -n %d ./a.out" mpiSize
          , printf "fapp -C -d prof-02 -Hpa=2 mpirun -n %d ./a.out" mpiSize
          , printf "fapp -C -d prof-03 -Hpa=3 mpirun -n %d ./a.out" mpiSize
          , printf "fapp -C -d prof-04 -Hpa=4 mpirun -n %d ./a.out" mpiSize
          , printf "fapp -C -d prof-05 -Hpa=5 mpirun -n %d ./a.out" mpiSize
          , printf "fapp -C -d prof-06 -Hpa=6 mpirun -n %d ./a.out" mpiSize
          , printf "fapp -C -d prof-07 -Hpa=7 mpirun -n %d ./a.out" mpiSize
          , printf "fapp -C -d prof-mpi -Impi mpirun -n %d ./a.out" mpiSize
          ]
      ]
    cmd $ "chmod 755 " ++ "submit.sh"
  superCopy (exeDir ++"/submit.sh") (?qbc^.qbHostName++":"++remotedir++"/submit.sh")
  remoteCmd $ "cd " ++ remotedir ++ ";rm -fr B*.i* B*.o* out/ "
  remoteCmd $ "cd " ++ remotedir ++ ";ksub submit.sh"

  let resultFiles = [kpath ++ pat | pat <- ["B*.i*", "B*.s*"]]
      kpath = ?qbc^.qbHostName++":"++remotedir++"/"

  return $ it
    & xpAction .~ Wait Benchmark
    [(resultFiles,Visualize)]
  -- TODO: you can map kjobid and job_id via kstat.

visualize :: WithQBConfig => IndExp -> IO IndExp
visualize it = do
  argv <- getArgs
  let csvMode = "--csv" `elem` argv -- Generate csv for Fujitsu XLS

  let
      exeDir = it ^. xpLocalWorkDir
      localLN  = ?qbc ^. qbLabNotePath
      remoteLN = ?qbc ^. qbRemoteLabNotePath
      host = ?qbc ^. qbHostName
  let remotedir = exeDir & T.packed %~ T.replace (T.pack localLN) (T.pack remoteLN)
  withCurrentDirectory exeDir $ do
    writeFile "postprocess.sh" $ unlines
      [
        if not csvMode then "" else
          unlines
          [ printf "fipppx -A  -Icpu,balance,call,hwm,src -d out/prof-ip > out/output_prof_ip.txt"
          , printf "fipppx -A  -Icpu,call,hwm -tcsv -d out/prof-ip > out/output_prof_ip.csv"
          , printf "fapppx -A  -l0 -tcsv -Hpa -d out/prof-01 -o out/output_prof_1.csv"
          , printf "fapppx -A  -l0 -tcsv -Hpa -d out/prof-02 -o out/output_prof_2.csv"
          , printf "fapppx -A  -l0 -tcsv -Hpa -d out/prof-03 -o out/output_prof_3.csv"
          , printf "fapppx -A  -l0 -tcsv -Hpa -d out/prof-04 -o out/output_prof_4.csv"
          , printf "fapppx -A  -l0 -tcsv -Hpa -d out/prof-05 -o out/output_prof_5.csv"
          , printf "fapppx -A  -l0 -tcsv -Hpa -d out/prof-06 -o out/output_prof_6.csv"
          , printf "fapppx -A  -l0 -tcsv -Hpa -d out/prof-07 -o out/output_prof_7.csv"
          , printf "fapppx -A -Impi  -ttext -d out/prof-mpi -o out/output_prof_mpi.txt"
          , printf "fapppx -A -Ihwm,nompi  -d out/prof-C -o out/output_prof_C.txt"
          , printf "fapppx -A -Ihwm,nompi  -d out/prof-I -o out/output_prof_I.txt"
          , printf "fapppx -A -Ihwm,nompi  -d out/prof-M -o out/output_prof_M.txt"
          , printf "fapppx -A -Ihwm,nompi  -d out/prof-P -o out/output_prof_P.txt"
          ]
      , unlines [ printf "fapppx -A -Ihwm,nompi  -d out/prof-X%d -o out/output_prof_X%d.txt" n n
                | n <- extensionNSet]
      ]
    cmd $ "chmod 755 " ++ "postprocess.sh"
  superCopy (exeDir ++"/postprocess.sh") (?qbc^.qbHostName++":"++remotedir++"/postprocess.sh")
  remoteCmd $ "cd " ++ remotedir ++ ";./postprocess.sh"
  cmd $ "rsync -avz " ++ (?qbc^.qbHostName++":"++remotedir++"/out/output_prof*.*") ++ " " ++ (exeDir ++"/out/")
  cmd $ "rsync -avz " ++ (?qbc^.qbHostName++":"++remotedir++"/src/*.optmsg") ++ " " ++ (exeDir ++"/src/")
  return $ it
    & xpAction .~ Done

waits :: WaitList -> IndExp -> IO IndExp
waits [] it = return it
waits ((fs,a):ws) it = do
  es <- mapM superDoesFileExist fs
  es3 <- mapM superDoesFileExist (flip map fs (T.packed %~ T.replace "/src/C" "/C")) -- TODO: 移行措置
  if and es || and es3 then return $ it & xpAction .~ a
    else waits ws it

----------------------------------------------------------------
-- Evolutionary Computations
----------------------------------------------------------------

stringAdd :: String -> [String] -> [String]
stringAdd x ys = S.toList $ S.fromList $ x:ys

stringDel :: String -> [String] -> [String]
stringDel x ys = filter (/=x) ys

stringPerturbers :: String -> [[String] -> [String]]
stringPerturbers x = [stringAdd x, stringDel x]

strOptPerturbers :: [String] -> [[String] -> [String]]
strOptPerturbers kwds = [f | k <- kwds, f <- stringPerturbers k]


perturb :: Individual -> [Individual]
perturb x = S.toList $ S.fromList [f x | f <- perturbers]

perturbers :: [Individual -> Individual]
perturbers = [idvNumericalConfig %~ f | f <- ncPerturbers]

ncIxs :: [(String,Int)]
ncIxs = zip ["x","y","z"] [0..]

normalize :: NumericalConfig -> [NumericalConfig]
normalize nc
  | not (sane nc) = []
  | otherwise     = [nc]
  where
    sane nc = and
      [ nc ^. ncTemporalBlockingInterval > 0
      , all (>0) $ nc ^. ncIntraNodeShape
      , all (>0) $ nc ^. ncMPIGridShape
      , nc ^. ncMonitorInterval > 0
      , and [ (head $ nc ^. ncInitialWalls . ix a) >  nc ^. ncTemporalBlockingInterval*2  | (a,i) <- ncIxs ]
      , and [ ws == sort ws | (a,_) <- ncIxs, let ws = nc ^. ncInitialWalls . ix a]
      ]
ncPerturbers :: [NumericalConfig -> NumericalConfig]
ncPerturbers = [ ncIntraNodeShape . ix a %~ f | a <- [0..2], f <- intPerturbers]
  ++ [ncTemporalBlockingInterval %~ f | f <- intPerturbers]
--  ++ [ncOptionStrings %~ f | f <- strOptPerturbers ]

intPerturbers :: [Int -> Int]
intPerturbers =
  [(+1), (+ negate 1),(*2),(flip div 2),(+8), (+ negate 8)]

----------------------------------------------------------------
-- Main Program
----------------------------------------------------------------

main :: IO ()
main = do
  putStrLn "out-procオプション等を設定したら、当該ファイルをステージアウトしなければならない。   インキュベータにこれらの機能を組み込むべき"
{-x <- doesFileExist qbConfigFilePath
  if not x then mainInit else mainServer
-}

mainInit :: IO ()
mainInit = do
  cmd "mkdir -p .qb"
  writeYaml qbConfigFilePath qbDefaultConfig

mainServer :: IO ()
mainServer = do
  argv <- getArgs
  putStrLn "Qppy!"
  writeYaml "izanagi.idv" defaultIndividual
  Just qbc0 <- readYaml qbConfigFilePath
  let ?qbc = qbc0 :: QBConfig
  let
     noteDir = ?qbc ^. qbLabNotePath
  withCurrentDirectory noteDir $
    cmd "git pull"
  findIdvs <- readCmd $ "find " ++ noteDir ++ " -name '*.idv'"
  let idvFns = case argv of
        [] ->  sort $ lines findIdvs
        pats -> concat [sort $ filter (isInfixOf pat) $ lines findIdvs | pat <- pats]

  idvFnsRnd <- shuffleM idvFns
  idxps <- catMaybes <$> mapM readIndExp idvFnsRnd

  let remainingTaskCount = length [() | it <- idxps, it ^. xpAction < Done]
  case remainingTaskCount <= 5 && ("--perturb" `elem` argv) of
    True -> do
      cmd "cd /home/nushio/hub/3d-mhd/individuals/understand-2; ./perturb.py"
      return ()
    False -> do
      mapM_ proceed  idxps
  putStrLn $ "remaining tasks: " ++ show remainingTaskCount
  return ()

proceed :: WithQBConfig => IndExp -> IO ()
proceed it = do
  argv <- getArgs
  let whenSlack lmt perform it = do
        kstat <- readCmd "ssh K 'cat kstat'"
        let crowded = length (lines kstat) - 5 > lmt
        case crowded &&  (not $ "--unnice" `elem` argv) of
          True -> do
            putStrLn "CROWDED!!"
            return it
          False -> perform it

  putStrLn $ "## "++ it ^. xpExperimentFilePath
  t_begin <- getCurrentTime
  newIt <- case it ^. xpAction of
    Codegen -> codegen it
    Compile ->  whenSlack 25 compile it
    Benchmark -> whenSlack 40 benchmark it
    Visualize -> visualize it
    Wait _ _ | "--unwait" `elem` argv -> return $  it & xpAction .~ Codegen
    Wait _ waitlist -> do
      ret <- waits waitlist it
      case ret ^. xpAction of
        Failed _ -> waits waitlist it -- Double check before choosing to fail.
        _ -> return ret
    Done -> return it
    Failed act -> case it ^. xpFailureCounter > 2 of
      True -> return it
      _ ->  return $ it & xpAction .~ Codegen
        & xpFailureCounter %~ (+1)

    x -> do
      hPutStrLn stderr $ "Unimplemented Action: " ++ show x
      return it
--      return (it & xpAction .~ Codegen)
  t_end <- getCurrentTime
  let newIt2 = newIt & xpTimeStamps %~ insertTimeStamp (t_begin, t_end, it ^. xpAction)

  writeIndExp $ newIt2
  print (newIt2 ^. xpAction)

  where
    insertTimeStamp ts [] = [ts]
    insertTimeStamp ts@(_,te,a1) tss@((tb,_,a2):tstail)
      | a1 == a2  = (tb,te,a1):tstail
      | otherwise = ts:tss
{- note: to submit interactive job on greatwave:

 pjsub --interact -L node=4 -L elapse=2:00:00 -L rscunit=gwmpc

-}
