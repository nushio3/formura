{-# LANGUAGE OverloadedStrings #-}

import Control.Monad
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

--   forM_ [2^i :: Int | i <- reverse [6..11]] $ \nx -> do
--     forM_ [2^j :: Int | j <- reverse [3..8]] $ \nt -> do


main :: IO ()
main = mapM_ doExperiment testExperiments

testExperiments :: [Experiment]
testExperiments =
  Experiment {bodyFileName = "body-2d-notb.cpp", algorithmName = "NoTB", nx = 64, nt = 0} :
  Experiment {bodyFileName = "body-2d-pitch.cpp", algorithmName = "PiTCH", nx = 64, nt = 16} :
  Experiment {bodyFileName = "body-2d-pitch-opt.cpp", algorithmName = "PiTCHOpt", nx = 64, nt = 16} :
  []



doExperiment :: Experiment -> IO ()
doExperiment xp = do
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

  system "g++ -O2 -Wall gen/main.cpp -o gen/bench.out"
  system "gen/bench.out"
  return ()
