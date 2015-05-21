#!/usr/bin/env runhaskell

{-# LANGUAGE OverloadedStrings #-}

import Control.Monad
import qualified Data.Text as T
import qualified Data.Text.IO as T
import System.Environment

main :: IO ()
main = getArgs >>= mapM_ process

process :: FilePath -> IO ()
process fn = do
  content <- T.readFile fn
  T.writeFile fn $ T.unlines $ T.lines content

patch :: [T.Text] -> [T.Text]
patch = vmovapd2vmovupd

vmovapd2vmovupd :: [T.Text] -> [T.Text]
vmovapd2vmovupd xs = p1 ++ rm 2 p2
  where
    (p1,p2) = span (not . T.isInfixOf "#central kernel") xs
    rm :: Int -> [T.Text] -> [T.Text]
    rm _ [] = []
    rm n (x:xs)
      | n <=0 = x:xs
      | T.isInfixOf "vmovapd" x = T.replace "vmovapd" "vmovupd" x : rm (n-1) xs
      | otherwise = rm n xs
