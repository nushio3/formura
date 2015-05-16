{-# LANGUAGE OverloadedStrings #-}

import Control.Monad
import Data.Char
import Data.List (nub, isInfixOf, intercalate)
import Data.Monoid
import qualified Data.Text as T
import qualified Data.Text.IO as T
import System.Process
import Text.Printf

thow :: (Show a) => a -> T.Text
thow = T.pack . show

replaceIf :: (a->Bool) -> a -> [a] -> [a]
replaceIf p x xs = map (\y -> if p y then x else y) xs


data Experiment =
  Experiment
  { bodyFileName :: FilePath
  , algorithmName :: String
  , nx :: Int
  , nt :: Int
  }
  deriving (Eq, Ord, Show)

--   forM_ [2^i :: Int | i <- reverse [6..11]] $ \nx -> do
--     forM_ [2^j :: Int | j <- reverse [3..8]] $ \nt -> do


main :: IO ()
main = forM_ (zip [1..] allExperiments) $ \(i, xp) -> do
  putStrLn $ show i ++ "/" ++ show (length allExperiments)
  print xp
  doExperiment True xp

smallExperiments :: [Experiment]
smallExperiments =
  Experiment {bodyFileName = "body-2d-pitch-opt.cpp", algorithmName = "PiTCHOpt", nx = 2048, nt = 64} :
  Experiment {bodyFileName = "body-2d-notb.cpp", algorithmName = "NoTB", nx = 256, nt = 0} :
  []


testExperiments :: [Experiment]
testExperiments =
  Experiment {bodyFileName = "body-2d-notb.cpp", algorithmName = "NoTB", nx = 64, nt = 0} :
  Experiment {bodyFileName = "body-2d-pitch.cpp", algorithmName = "PiTCH", nx = 64, nt = 16} :
  Experiment {bodyFileName = "body-2d-pitch-opt.cpp", algorithmName = "PiTCHOpt", nx = 64, nt = 16} :
  []


allExperiments :: [Experiment]
allExperiments = nub $ do
  nx0 <- [2^n | n <- [4..12]]
  nt0 <- [2^n | n <- [3..8]]
  guard (nx0 > nt0)
  reverse $
    Experiment {bodyFileName = "body-2d-notb.cpp", algorithmName = "NoTB", nx = nx0, nt = 0} :
    Experiment {bodyFileName = "body-2d-pitch.cpp", algorithmName = "PiTCH", nx = nx0, nt = nt0} :
    Experiment {bodyFileName = "body-2d-pitch-opt.cpp", algorithmName = "PiTCHOpt", nx = nx0, nt = nt0} :
    []




doExperiment :: Bool -> Experiment -> IO ()
doExperiment really xp = do
  mainCpp <- T.readFile "benchmark-2d-main.cpp"
  bodyCpp <- T.readFile $ bodyFileName xp

  let mainCppGen =
        T.unlines $
        replaceIf (T.isInfixOf "const int NX" ) ("const int NX = " <> thow (nx xp) <> ";") $
        T.lines mainCpp

      bodyCppGen =
        T.unlines $
        replaceIf (T.isInfixOf "const int NT =" ) ("const int NT = " <> thow (nt xp) <> ";") $
        replaceIf
        (T.isInfixOf "string algorithm_tag_str" )
        ("string algorithm_tag_str = \"" <> T.pack (algorithmName xp) <> "-" <> thow (nt xp) <> "\";") $
        T.lines bodyCpp

  T.writeFile "gen/main.cpp" mainCppGen
  T.writeFile "gen/body.cpp" bodyCppGen

  cpuinfo <- readFile "/proc/cpuinfo"
  let cpustr :: String
      cpustr =
        terminalEncode $
        drop 1 $
        dropWhile (/=':') $
        head $ filter (isInfixOf "model name") $
        lines cpuinfo
      isAvx2 = isInfixOf " avx2 " cpuinfo

      compileCommand =
        "g++ -O2 -Wall " ++
        (if isAvx2 then " -march=core-avx2 " else "") ++
        " -mcmodel=large gen/main.cpp -o gen/bench.out"

  system "rm gen/bench.out"
  putStrLn compileCommand
  system compileCommand
  when really $ do
    system $ "gen/bench.out " ++ cpustr
    return ()
  return ()

terminalEncode :: String -> String
terminalEncode str = intercalate "-" $ words $ map f str
  where
    f :: Char -> Char
    f c
      | isAlpha c = c
      | isDigit c = c
      | c=='.'    = c
      | otherwise = ' '
