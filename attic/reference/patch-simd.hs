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
  T.writeFile fn $ T.unlines $ patch $ T.lines content

patch :: [T.Text] -> [T.Text]
patch = vmovapd2vmovupd

vmovapd2vmovupd :: [T.Text] -> [T.Text]
vmovapd2vmovupd xs = p1 ++ remv p2 ++ p3
  where
    (p1,p2s) = span (not . T.isInfixOf "#central kernel begin") xs
    (p2,p3)  = span (not . T.isInfixOf "#central kernel end") p2s
    remv ::  [T.Text] -> [T.Text]
    remv [] = []
    remv (x:xs)
      | T.isInfixOf "vmovapd" x = T.replace "vmovapd" "vmovupd" x : remv xs
      | otherwise = x:remv xs
