{-# LANGUAGE TemplateHaskell #-}
module CommandLineOption where

import Control.Applicative
import Control.Lens
import Options.Applicative

data Options = Options
               { _outputFilename :: String
               }
makeLenses ''Options
