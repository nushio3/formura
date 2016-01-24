module Main where

import CommandLineOption(parseCommandLineOption)

main :: IO ()
main = do
  opts <- parseCommandLineOption
  print opts
