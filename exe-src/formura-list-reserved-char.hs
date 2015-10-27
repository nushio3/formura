module Main where

import Control.Monad
import Data.Char
import Language.Formura.Parser.Combinator

main :: IO ()
main = do
  forM_ [0..15] $ \j -> do
    forM_ [0..15] $ \i -> do
      let asc :: Int
          asc = j*16+i
          chr :: Char
          chr = toEnum asc
      case isPrint chr of
       True -> putStr ['[', chr , ']' ]
       False -> putStr "..."
    putStrLn ""
