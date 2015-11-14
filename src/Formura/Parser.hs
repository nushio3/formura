{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Formura.Parser where

import Control.Applicative
import Control.Lens
import Control.Monad
import Control.Monad.State
import Data.Char (isSpace)
import Text.Trifecta
import Text.Trifecta.Delta
import Text.Parser.LookAhead

import Formura.Language.Combinator
import Formura.Compiler

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
