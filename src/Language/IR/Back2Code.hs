module Language.IR.Back2Code where

import Language.IR.Backend
import System.Process

generate :: FilePath -> Function -> IO ()
generate dirName func = do
  system $ "mkdir -p " ++ dirName
