{-# LANGUAGE GeneralizedNewtypeDeriving, MultiParamTypeClasses, StandaloneDeriving, TemplateHaskell #-}

import Control.Applicative
import Control.Lens
import Control.Monad
import Data.Char
import qualified Data.Map as M
import Data.Ratio
import Text.Trifecta as Trifecta
import Text.Parser.Expression as P
import Text.Trifecta.Delta

import qualified Language.IR.Frontend as F

newtype Parser a = Parser {internalP :: Trifecta.Parser a}

deriving instance Alternative Parser
deriving instance Monad Parser
deriving instance Functor Parser
deriving instance MonadPlus Parser
deriving instance Applicative Parser
deriving instance CharParsing Parser
deriving instance Parsing Parser
deriving instance DeltaParsing Parser
deriving instance Errable Parser
deriving instance MarkParsing Delta Parser


-- | The compiler metadata that provides access to the source.
newtype Metadata = Metadata {_metadataRendering :: Rendering}
instance Show Metadata where
  show = const ""

makeLenses ''Metadata

instance HasRendering Metadata where
  rendering = iso _metadataRendering Metadata

metadata :: P Metadata
metadata = fmap Metadata rend

instance TokenParsing P where
  someSpace = let
    whitespace = (satisfy $ \c -> c /= '\n' && isSpace c)
               >> return ()
    comment = char '#' >> many (satisfy (/='\n'))
               >> return ()
    in skipMany (whitespace <|> comment)

-- | This does NOT parses the sign; signs are to be treated as unary operators.
rational :: TokenParsing m => m Rational
rational = token $
  decimal <**> (try fractExponent <|> pure toRational)
{-# INLINE rational #-}

fractExponent :: TokenParsing m => m (Integer -> Rational)
fractExponent = (\fract expo n -> (fromInteger n + fract) * expo) <$> fraction <*> option 1.0 exponent'
            <|> (\expo n -> fromInteger n * expo) <$> exponent' where
  fraction = Prelude.foldr op 0.0 <$> (char '.' *> (some digit <?> "fraction"))
  op d f = (f + fromIntegral (digitToInt d))/10.0
  exponent' = ((\f e -> power (f e)) <$ oneOf "eE" <*> sign <*> (decimal <?> "exponent")) <?> "exponent"
  power e
    | e < 0     = 1.0/power(-e)
    | otherwise = fromInteger (10^e)
  sign :: TokenParsing m => m (Integer -> Integer)
  sign = negate <$ char '-'
     <|> id <$ char '+'
     <|> pure id


isIdentifierAlphabet0 :: Char -> Bool
isIdentifierAlphabet0 = isLetter
isIdentifierAlphabet1 :: Char -> Bool
isIdentifierAlphabet1 c = isAlphaNum c || c == '_'
isIdentifierSymbol :: Char -> Bool
isIdentifierSymbol c = isPrint c &&
  not (isIdentifierAlphabet1 c || isSpace c ||
      c `elem` "'\"(),;[]`{}\\")

identifierString :: P String
identifierString = token (a <|> s <|> s1) <?> "identifier name"
  where
    a = (:) <$> satisfy isIdentifierAlphabet0
            <*> many (satisfy isIdentifierAlphabet1)
    s = some (satisfy isIdentifierSymbol)
    s1 = (:[]) <$> satisfy isStandaloneIdentifierSymbol


keywordSymbol :: String -> P String
keywordSymbol str = (token $ string str)
  <?> "keyword " ++ str

keyword :: String -> P String
keyword str =
  token (string str <* notFollowedBy alphaNum)
  <?> "keyword " ++ str


identifierName :: P String
identifierName = try $ do
  ret <- identifierString
  guard $ not $ elem ret reservedWords
  return ret


reservedWords :: [String]
reservedWords = ["begin","end","function"]
