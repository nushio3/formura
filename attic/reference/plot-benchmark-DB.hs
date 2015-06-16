#!/usr/bin/env runhaskell

import Control.Monad
import Data.List
import Data.List.Split
import qualified Data.Map as M
import System.Environment
import System.Process
import Text.Printf

data Key = Key { algorithm :: String, problemSize :: Int, tileSize :: Int, threadSize :: Int }
           deriving (Eq, Ord, Show, Read)

main :: IO ()
main = do
  getArgs >>= mapM_ process

process :: FilePath -> IO ()
process fn = do
  contentStr <- readFile fn
  let allBench :: M.Map Key [Double]
      allBench = foldr (M.unionWith (++)) M.empty $ map p1 $ lines contentStr

      p1 :: String -> M.Map Key [Double]
      p1 str
        | isInfixOf "DB" (ws!!0) = M.singleton (Key (ws!!0) (read $ ws!!4) (tileSize)  (read $ ws!!2)) [read $ ws!!9]
        | otherwise              = M.empty
        where ws = words str
              tileSize = read $ (!!1) $ splitOn "-" (ws!!0)


  mapM_ putStrLn $ map ppr $ M.toList allBench

ppr :: (Key, [Double]) -> String
ppr (k, xs)= printf "%s%s %d %d %d %f %f %f" (nl) (algorithm k) (tileSize k) (threadSize k) (problemSize k) mid lo hi
  where
    xsSorted = sort xs
    n = length xs
    mid = (xsSorted !! (n `div` 2))
    lo  = (xsSorted !! (n - (3*n) `div` 4))
    hi  = (xsSorted !! ((3*n) `div` 4))
    nl = if threadSize k == 1 then "\n" else ""
