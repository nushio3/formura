{-#  #-}

module CommandLineOption where

import Options.Applicative

data CommandLineOption =
  CommandLineOption
    { _inputFilenames :: [FilePath]
    , _outputFilename :: FilePath
    }
  deriving (Eq, Show)

cloParser :: Parser CommandLineOption
cloParser = CommandLineOption <$>
            some (argument str (metavar "FILES...")) <*>
            strOption (long "output-filename" <> short 'o' <> metavar "FILENAME" <> help "the name of the .c file to be generated.")

parseCommandLineOption :: IO CommandLineOption
parseCommandLineOption = execParser $
                         info (helper <*> cloParser)
                         ( fullDesc
                           <> progDesc "generate c program from formura program."
                           <> header "formura - a domain-specific language for stencil computation" )
