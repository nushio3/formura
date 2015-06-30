{-# LANGUAGE OverloadedStrings #-}
module Language.IR.Back2Code where

import qualified Data.Text as T
import qualified Data.Text.IO as T
import Language.IR.Backend
import System.Process

generate :: FilePath -> Function -> IO ()
generate dirName func = do
  system $ "mkdir -p " ++ dirName
  return ()

class ToCode a where
  toCode :: a -> T.Text

instance ToCode Expr where
  toCode (Lit x) = T.pack $ show (fromRational x :: Double)
  toCode (Load var off) = undefined
