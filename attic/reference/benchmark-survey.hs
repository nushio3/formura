#!/usr/bin/env runhaskell
{-# LANGUAGE OverloadedStrings #-}

import Control.Monad
import Data.Char
import Data.List (nub, isInfixOf, intercalate,sort)
import Data.Monoid
import qualified Data.Text as T
import qualified Data.Text.IO as T
import System.Environment
import System.Process
import Text.Printf

thow :: (Show a) => a -> T.Text
thow = T.pack . show

replaceIf :: (a->Bool) -> a -> [a] -> [a]
replaceIf p x xs = map (\y -> if p y then x else y) xs


data Experiment =
  Experiment
  { nice :: Double
  , bodyFileName :: FilePath
  , algorithmName :: String
  , nx :: Int
  , nt :: Int
  , nthre :: Int
  }
  deriving (Eq, Ord, Show)

--   forM_ [2^i :: Int | i <- reverse [6..11]] $ \nx -> do
--     forM_ [2^j :: Int | j <- reverse [3..8]] $ \nt -> do

defaultExperiment =
  Experiment
  {bodyFileName = "/dev/null/null.cpp", algorithmName = "", nx = 256, nt = 64, nthre=1, nice=0}

main :: IO ()
main = do
  argv <- getArgs
  let tgt
        | "-B" `elem` argv = allExperiments
        | otherwise = smallExperiments

  forM_ (zip [1..] tgt) $ \(i, xp) -> do
    putStrLn $ show i ++ "/" ++ show (length tgt)
    print xp
    doExperiment ("-X" `elem` argv) xp

smallExperiments :: [Experiment]
smallExperiments =
  defaultExperiment {bodyFileName = "body-2d-notb.cpp", algorithmName = "NoTB", nx = 64, nt = 0} :
  defaultExperiment {bodyFileName = "body-2d-pitch-simd.cpp", algorithmName = "PiTCHNU", nx = 256, nt = 64, nthre=16} :
  defaultExperiment {bodyFileName = "body-2d-pitch-simd.cpp", algorithmName = "PiTCHNU", nx = 4096, nt = 64, nthre=32} :
  []


testExperiments :: [Experiment]
testExperiments =
  defaultExperiment {bodyFileName = "body-2d-notb.cpp", algorithmName = "NoTB", nx = 64, nt = 0} :
  defaultExperiment {bodyFileName = "body-2d-pitch.cpp", algorithmName = "PiTCH", nx = 64, nt = 16} :
  defaultExperiment {bodyFileName = "body-2d-pitch-opt.cpp", algorithmName = "PiTCHOpt", nx = 64, nt = 16} :
  []


allExperiments :: [Experiment]
allExperiments = sort $ nub $ do
  nx0 <- [2^n | n <- [11..12]]
  nt0 <- [2^n | n <- [4..8]]
  nthre0 <- [1,2,4,8,16,32]
  guard (nx0 > nt0)
  guard (nx0 `div` nt0 >= nthre0)
  id $
    defaultExperiment {bodyFileName = "body-2d-notb.cpp", algorithmName = "NoTB", nx = nx0, nt = 0,
                       nice= 1} :
    defaultExperiment {bodyFileName = "body-2d-pitch.cpp", algorithmName = "PiTCH", nx = nx0, nt = nt0} :
    defaultExperiment {bodyFileName = "body-2d-pitch-opt.cpp", algorithmName = "PiTCHOpt", nx = nx0, nt = nt0} :
    defaultExperiment {bodyFileName = "body-2d-pitch-simd.cpp", algorithmName = "PiTCHDB",
                       nx = nx0, nt = nt0, nthre=nthre0, nice = -1} :
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

      compileCommands =
        ["g++ -S -O2 -Wall -fopenmp " ++
         (if isAvx2 then " -march=core-avx2 " else "") ++
         " -mcmodel=large gen/main.cpp -o gen/main.s",
         "./patch-simd.hs gen/main.s",
         "g++ -O2 -Wall -fopenmp  -mcmodel=large  gen/main.s -o gen/bench.out"
         ]

  system "rm gen/bench.out"
  mapM_ putStrLn compileCommands
  mapM_ system compileCommands
  let systemStr =  "OMP_NUM_THREADS=" ++ (show $ nthre xp) ++ " gen/bench.out " ++ cpustr
  putStrLn systemStr
  when really $ do
    system systemStr
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
