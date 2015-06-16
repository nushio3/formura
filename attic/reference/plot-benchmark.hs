#!/usr/bin/env runhaskell

import Control.Monad
import Data.Function
import Data.List
import qualified Data.Map as M
import System.Environment
import System.Process
import Text.Printf

data Key = Key { algorithm :: String, problemSize :: Int, threadSize :: Int }
           deriving (Eq, Ord, Show, Read)

main :: IO ()
main = do
  getArgs >>= mapM_ process

algorithms :: [(String,String)]
algorithms = zip [printf "PiTCHDB-%d" (2^n :: Int) | n <- [4..8]]
  ["#ff0000",
   "#888800",
   "#00ff00",
   "#008888",
   "#0000ff"]






process :: FilePath -> IO ()
process fn = do
  bm <- readBenchmarkFile fn

  forM_ [2^n | n <- [5..12]] $ \problemSize0 -> do
    print problemSize0
    let bm1 = M.filterWithKey (\k _ -> problemSize k == problemSize0) bm

    plotCmds <- fmap concat $ forM algorithms $ \(a0,c0) -> do
      let bm2 = M.filterWithKey (\k _ -> algorithm k == a0) bm1
          fnA = printf "/tmp/%s.txt" a0
      case M.size bm2 of
        0 -> return []
        _ -> do
          writeFile fnA $ unlines $ map ppr $ M.toList bm2
          return [printf "'%s' u 2:4:5:6 w yerr pt 0 lw 2 lc rgb '%s' t '%s'"
                  fnA c0 a0,
                  printf "'%s' u 2:6 w l  lw 2 lc rgb '%s' t ''"
                  fnA c0
                 ]
    let fnG = "plot.gnu"
    writeFile fnG $ unlines
      [ "set term postscript enhanced color solid 20"
      , "set out 'result/benchmark.eps'"
      , "set grid"
      , printf "set title 'Problem Size %d'" problemSize0
      , "set xlabel 'Thread Number'"
      , "set ylabel 'Flop/s'"
      , "set xrange [1:40]"
      , "set ytics (1e9, 2e9, 4e9, 8e9, 16e9, 32e9,64e9,128e9)"
      , "set xtics (1, 2, 4, 8, 16, 32)"
      , "set yrange [1e9:600e9]"
      , "set key left top"
      , "set log xy"
      , "set format y \"%2.1t{/Symbol \\327}10^{%L}\""
      , printf "set out 'result/%04d.eps'" problemSize0
      , printf "plot %s" $ intercalate "," plotCmds]

    system $ printf "gnuplot %s" fnG











readBenchmarkFile :: FilePath -> IO (M.Map Key [Double])
readBenchmarkFile fn = do
  contentStr <- readFile fn
  let allBench :: M.Map Key [Double]
      allBench = foldr (M.unionWith (++)) M.empty $ map p1 $ lines contentStr

      p1 :: String -> M.Map Key [Double]
      p1 str = M.singleton (Key{algorithm = ws!!0, problemSize = read $ ws!!4, threadSize = read $ ws!!2}) [read $ ws!!9]
        where ws = words str
  return $ M.fromList $
    filter (isInfixOf "PiTCHDB" . algorithm  . fst) $
    M.toList allBench

ppr :: (Key, [Double]) -> String
ppr (k, xs)= printf "%s%s %d %d %f %f %f" (nl) (algorithm k) (threadSize k) (problemSize k) (mid/z) (lo/z) (hi/z)
  where
    xsSorted = sort xs
    n = length xs
    z = 1
    mid = (xsSorted !! (n `div` 2))
    lo  = (xsSorted !! (n - (3*n) `div` 4))
    hi  = last xsSorted
    nl = "" -- if threadSize k == 1 then "\n" else ""
