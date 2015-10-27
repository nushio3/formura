{-# LANGUAGE MultiWayIf #-}
module Main where

import Control.Monad
import Data.Char
import Language.Formura.Parser.Combinator

verbatim :: Char -> String
verbatim c
  | c == '|' = "\\verb+" ++ [c] ++ "+"
  | otherwise = "\\verb|" ++ [c] ++ "|"

main :: IO ()
main = do
  putStrLn "\\begin{tabular}{cccccccccccccccc}"
  forM_ [0..7] $ \j -> do
    forM_ [0..15] $ \i -> do
      let asc :: Int
          asc = j*16+i
          chr :: Char
          chr = toEnum asc
      if | isIdentifierAlphabet0        chr -> putStr $ "\\cellcolor{alphabetcolor} "    ++  verbatim chr
         | isIdentifierAlphabet1        chr -> putStr $ "\\cellcolor{alphabetoidcolor} " ++  verbatim chr
         | isIdentifierSymbol           chr -> putStr $ "\\cellcolor{symbolcolor} "      ++  verbatim chr
         | isStandaloneIdentifierSymbol chr -> putStr $ "\\cellcolor{symboliccolor} "    ++  verbatim chr
         | isPrint                      chr -> putStr $ "\\cellcolor{othercharcolor} "   ++  verbatim chr
         | otherwise                        -> putStr $ " "
      when (i < 15) $ putStr " &"
    when (j < 7) $ putStrLn "\\\\"
  putStrLn ""
  putStrLn "\\end{tabular}"
