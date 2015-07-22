{-# LANGUAGE TemplateHaskell #-}
module Main where

import Control.Applicative
import Control.Monad
import Data.Monoid
import System.Environment
import System.IO
import qualified Text.Trifecta as Tri
import Text.PrettyPrint.ANSI.Leijen as Pretty hiding (line, (<>), (<$>), empty, integer)


import Language.Formura.Parser.Combinator (internalP)
import Language.Formura.Parser (program)

main :: IO ()
main = getArgs >>= mapM_ process

process :: FilePath -> IO ()
process fileName = do
  putStrLn $ "#### Analyze: " ++ fileName
  res <- Tri.parseFromFileEx (internalP program <* Tri.eof) fileName
  case res of
   Tri.Success prog -> do
     mapM_ print prog
   Tri.Failure doc ->
     displayIO stdout $ renderPretty 0.8 80 $ doc <> linebreak
