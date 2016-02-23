{-# LANGUAGE ConstraintKinds, ImplicitParams, TemplateHaskell #-}

module Formura.CommandLineOption where

import Control.Lens hiding (argument)
import Options.Applicative

type WithCommandLineOption = ?commandLineOption :: CommandLineOption

data CommandLineOption =
  CommandLineOption
    { _inputFilenames :: [FilePath]
    , _outputFilename :: FilePath
    , _numericalConfigFilename :: FilePath
    , _verbose :: Bool
    , _sleepAfterGen :: Int
    }
  deriving (Eq, Show)
makeClassy ''CommandLineOption

cloParser :: Parser CommandLineOption
cloParser = CommandLineOption
            <$>
            some (argument str (metavar "FILES..."))
            <*>
            strOption (long "output-filename" <> short 'o' <> metavar "FILENAME" <> value "" <>
                       help "the name of the .c file to be generated.")
            <*>
            strOption (long "nc" <> metavar "FILENAME" <> value "" <>
                       help "the name of the file that provides numerical simulation configuration in YAML format.")
            <*>
            switch (long "verbose" <> short 'v' <> help "output debug messages.")
            <*>
            fmap read (strOption (long "sleep" <> metavar "SECOND" <> value "0" <>
                    help "sleep n seconds after successful generation of the destination program."))


getCommandLineOption :: IO CommandLineOption
getCommandLineOption = execParser $
                         info (helper <*> cloParser)
                         ( fullDesc
                           <> progDesc "generate c program from formura program."
                           <> header "formura - a domain-specific language for stencil computation" )
