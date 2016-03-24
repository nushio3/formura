{-# LANGUAGE ConstraintKinds, ImplicitParams, TemplateHaskell #-}

module Formura.CommandLineOption where

import           Control.Lens hiding (argument)
import           Options.Applicative
import           System.FilePath.Lens

type WithCommandLineOption = ?commandLineOption :: CommandLineOption

data CommandLineOption =
  CommandLineOption
    { _inputFilenames :: [FilePath]
    , _outputFilename :: FilePath
    , _numericalConfigFilename :: FilePath
    , _verbose :: Bool
    , _generateMakefile :: Bool
    , _auxNumericalConfigOptions :: [String]
    , _auxFlags :: [String]
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
            switch (long "makefile" <> long "mk" <> help "also generate a Makefile for compilation.")
            <*>
            many (strOption $ long "ncopt" <> help "additional arguments to numerical configuration.")
            <*>
            many (strOption $ long "flag" <> short 'f' <> help "additional arguments to formura.")
            <*>
            fmap read (strOption (long "sleep" <> metavar "SECOND" <> value "0" <>
                    help "sleep n seconds after successful generation of the destination program."))


getCommandLineOption :: IO CommandLineOption
getCommandLineOption = execParser $
                         info (helper <*> cloParser)
                         ( fullDesc
                           <> progDesc "generate c program from formura program."
                           <> header "formura - a domain-specific language for stencil computation" )

ncFilePath :: WithCommandLineOption => FilePath
ncFilePath = case ?commandLineOption ^. numericalConfigFilename of
  "" -> head (?commandLineOption ^. inputFilenames) & extension .~ ".yaml"
  x  -> x


cxxFilePath :: WithCommandLineOption => FilePath
cxxFilePath = case ?commandLineOption ^. outputFilename of
  "" -> head (?commandLineOption ^. inputFilenames) & extension .~ ".c"
  x  -> x

cxxFileBodyPath :: WithCommandLineOption => FilePath
cxxFileBodyPath = case ?commandLineOption ^. outputFilename of
  "" -> head (?commandLineOption ^. inputFilenames) & extension .~ ""
  x  -> x & extension .~ ""


hxxFilePath :: WithCommandLineOption => FilePath
hxxFilePath = cxxFilePath & extension .~ ".h"

cxxFileName :: WithCommandLineOption => FilePath
cxxFileName = cxxFilePath ^. filename

hxxFileName :: WithCommandLineOption => FilePath
hxxFileName = hxxFilePath ^. filename
