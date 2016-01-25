{-# LANGUAGE ConstraintKinds, ImplicitParams, TemplateHaskell #-}

module Formura.CommandLineOption where

import Control.Lens hiding (argument)
import Options.Applicative

type WithCommandLineOption = ?commandLineOption :: CommandLineOption

data CommandLineOption =
  CommandLineOption
    { _inputFilenames :: [FilePath]
    , _outputFilename :: FilePath
    }
  deriving (Eq, Show)
makeClassy ''CommandLineOption

cloParser :: Parser CommandLineOption
cloParser = CommandLineOption <$>
            some (argument str (metavar "FILES...")) <*>
            strOption (long "output-filename" <> short 'o' <> metavar "FILENAME" <> help "the name of the .c file to be generated.")

getCommandLineOption :: IO CommandLineOption
getCommandLineOption = execParser $
                         info (helper <*> cloParser)
                         ( fullDesc
                           <> progDesc "generate c program from formura program."
                           <> header "formura - a domain-specific language for stencil computation" )
