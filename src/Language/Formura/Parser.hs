{-# LANGUAGE GeneralizedNewtypeDeriving, MultiParamTypeClasses, StandaloneDeriving, TemplateHaskell #-}
module Language.Formura.Parser where

import Control.Applicative
import Control.Lens
import Control.Monad
import Data.Char
import qualified Data.Map as M
import Data.Ratio
import Text.Trifecta as T
import Text.Trifecta.Delta

newtype P a = P {internalP :: T.Parser a}

deriving instance Alternative P
deriving instance Monad P
deriving instance Functor P
deriving instance MonadPlus P
deriving instance Applicative P
deriving instance CharParsing P
deriving instance Parsing P
deriving instance DeltaParsing P
deriving instance Errable P
deriving instance MarkParsing Delta P




-- | The compiler metadata that provides access to the source.
newtype Metadata = Metadata {_metadataRendering :: Rendering}
instance Show Metadata where
  show = const ""

makeLenses ''Metadata

instance HasRendering Metadata where
  rendering = iso _metadataRendering Metadata

metadata :: P Metadata
metadata = fmap Metadata rend


data Term = RationalLiteral
            {_termMetadata :: Metadata, _termRational :: Rational}
          | SymbolLiteral
            {_termMetadata :: Metadata, _termSymbol :: String}
          | StatementDelimiter
            {_termMetadata :: Metadata}
          | ListTerm
            {_termMetadata :: Metadata, _termCar :: String, _termCdr :: [Term]}

makeLenses ''Term

isStatementDelimiter :: Term -> Bool
isStatementDelimiter StatementDelimiter{} = True
isStatementDelimiter _                      = False

instance HasRendering Term where
  rendering = termMetadata . metadataRendering

instance Show Term where
  show (RationalLiteral _ r) = pprRational r
  show (SymbolLiteral _ s) = s
  show (StatementDelimiter _)= ";"
  show (ListTerm _ car cdr) =
    "(" ++ unwords (car : map show cdr) ++
    ")"


pprRational :: Rational -> String
pprRational r
  | length (show r) >= 80 = show (fromRational r :: Double)
  | denominator r == 1 = show (numerator r)
  | otherwise          =
      show (numerator r) ++ "/" ++ show (denominator r)

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
      c `elem` "'\"(),;[]`{}")

isStandaloneIdentifierSymbol :: Char -> Bool
isStandaloneIdentifierSymbol c =
      c `elem` ",`"

keyword :: String -> P String
keyword str = (token $ string str)
  <?> "keyword " ++ str

keywordAlpha :: String -> P String
keywordAlpha str =
  token (string str <* notFollowedBy alphaNum)
  <?> "keyword " ++ str


program :: P Term
program = do
    spaces
    m <- metadata
    ListTerm m "program" <$> many term


identifierString :: P String
identifierString = token (a <|> s <|> s1) <?> "identifier name"
  where
    a = (:) <$> satisfy isIdentifierAlphabet0
            <*> many (satisfy isIdentifierAlphabet1)
    s = some (satisfy isIdentifierSymbol)
    s1 = (:[]) <$> satisfy isStandaloneIdentifierSymbol

term :: P Term
term = metadata >>= termWithMeta

termWithMeta :: Metadata -> P Term
termWithMeta meta =
  beginEndList <|>
  parenList "(" ")" <|>
  parenList "{" "}" <|>
  parenList "[" "]" <|>
  RationalLiteral meta <$> rational <|>
  StatementDelimiter meta <$ some (token newline <|> token semi) <|>
  SymbolLiteral meta <$> identifierString

  where
    {-
    rationalFromInteger =
      RationalLiteral meta . fromInteger <$> integer
    rationalFromDouble =
      RationalLiteral meta . toRational <$> double-}
    beginEndList = do
      try $ keywordAlpha "begin"
      str <- identifierString
      let ending = do
            try $ keywordAlpha "end"
            symbol str
      ListTerm meta str <$> manyTill term ending
    parenList b e =
      keyword b *>
      (ListTerm meta (b++e) <$> manyTill term (keyword e))
