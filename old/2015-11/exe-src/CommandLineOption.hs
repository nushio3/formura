{-# LANGUAGE TemplateHaskell #-}
module CommandLineOption where

import Control.Applicative
import Control.Lens
import Data.Monoid
import Options.Applicative
import System.IO.Unsafe

data Options = Options
               { _outputFilename :: FilePath
               , _inputFiles :: [FilePath]
               , _verbose :: Bool
               } deriving (Eq, Show)
makeLenses ''Options

optionsP :: Parser Options
optionsP = (<*>) helper $
           Options <$> outputFilenameP <*> inputFilesP <*> verboseP

inputFileP :: Parser FilePath
inputFileP = strArgument $ mconcat
    [ help "input files"
    , metavar "FILES"
    , action "file"
    ]

inputFilesP :: Parser [FilePath]
inputFilesP = some inputFileP

outputFilenameP :: Parser String
outputFilenameP = strOption $ mconcat
    [ short 'o', long "output"
    , help "output file"
    , metavar "FILE"
    , value "output.cpp"
    , showDefaultWith id
    ]

verboseP :: Parser Bool
verboseP = switch $ mconcat
    [ short 'v', long "verbose"
    , help "output the debug messages."
    ]


myParserInfo :: ParserInfo Options
myParserInfo = info optionsP $ mconcat
    [ fullDesc
    , progDesc ""
    , header "Formura stencil code generator & optimizer."
    , footer "For the source code, bug reports, etc. see <https://github.com/nushio3/formura>"
    ]

{-# NOINLINE theOption #-}
theOption :: Options
theOption = unsafePerformIO $ customExecParser (prefs showHelpOnError) myParserInfo
