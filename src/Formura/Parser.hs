{-# LANGUAGE FlexibleContexts, GeneralizedNewtypeDeriving #-}
module Formura.Parser where

import Control.Applicative
import Control.Lens
import Control.Monad
import Control.Monad.State
import Data.Char (isSpace, isLetter, isAlphaNum, isPrint)
import qualified Data.Set as S
import Text.Trifecta
import Text.Trifecta.Delta
import Text.Parser.LookAhead

import Formura.Language.Combinator
import Formura.Compiler
import Formura.Syntax

newtype P a = P { runP :: StateT CompilerState Parser a }
            deriving (Alternative, Monad, Functor, MonadPlus, Applicative, CharParsing, LookAheadParsing, Parsing, DeltaParsing, MarkParsing Delta)

instance Errable P where
  raiseErr = P . lift . raiseErr

instance TokenParsing P where
  someSpace =
    let  f '\n' = False
         f '\r' = False
         f x | isSpace x = True
             | otherwise = False

    in some ((satisfy f >> return ())
             <|> comment
             <|> lineContinuation)
       >> return ()

comment :: P ()
comment = do
  char '#'
  manyTill anyChar (lookAhead newline)
  return ()

lineContinuation :: P ()
lineContinuation = do
  char '\\'
  someSpace
  newline
  return ()

parseIn :: Functor f => P (f (Fix f)) -> P (Fix f)
parseIn p = do
  r1 <- rend
  x  <- p
  r2 <- rend
  return $ In (Just $ Metadata r1 (delta r1) (delta r2)) x


isIdentifierAlphabet0 :: Char -> Bool
isIdentifierAlphabet0 = isLetter
isIdentifierAlphabet1 :: Char -> Bool
isIdentifierAlphabet1 c = isAlphaNum c || c == '_'  || c == '\''
isIdentifierSymbol :: Char -> Bool
isIdentifierSymbol c = isPrint c &&
  not (isIdentifierAlphabet1 c || isSpace c ||
      c `elem` "\"#();[\\]{}")

identifier :: P IdentName
identifier = do
  let s :: P String
      s = some $ satisfy isIdentifierSymbol
      a0 :: P Char
      a0 = satisfy isIdentifierAlphabet0
      a1 :: P Char
      a1 = satisfy isIdentifierAlphabet1
      a :: P String
      a = (:) <$> a0 <*> some a1
  str <- s <|> a
  guard $  str `S.notMember` keywordSet
  someSpace
  return str

keywordSet :: S.Set IdentName
keywordSet = S.fromList
             ["begin", "end", "function", "let", "in", "lambda", "for"]


ident :: Elem IdentF fs => P (Lang fs)
ident = parseIn $ Ident <$> identifier
