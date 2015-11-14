{-# LANGUAGE DataKinds #-}
module Main where

import qualified Text.Trifecta as P

import Formura.Syntax
import qualified Formura.Parser as P

main :: IO ()
main = do
  argv <- getArgs
  mapM_ process argv

process :: FilePath -> IO ()
process fn = do
  mprog <- P.parseFromFile P.program fn
  case mprog of
      Right prog -> print $ prog
      Left doc -> Ppr.displayIO stdout $ Ppr.renderPretty 0.8 80 $ doc <> Ppr.linebreak
