{-# LANGUAGE TypeOperators #-}
module Language.Formura.SyntaxParser where

import Control.Applicative
import Text.Trifecta
import Text.Parser.Expression
import Data.Text (Text, pack)
import Data.Ratio
import Language.Formura.AST

metadata :: Parser Metadata
metadata = fmap Metadata rend

meta :: Parser (s Meta) -> Parser (s & Meta)
meta parseS = Meta <$> metadata <*> parseS

strTok :: String -> Parser ()
strTok str = do
  _ <- string str
  spaces

variableNameText :: Parser Text
variableNameText = fmap pack $ (:) <$> letter <*> many alphaNum <* spaces

variableName :: Parser (VariableName & Meta)
variableName = meta $ VariableName <$> variableNameText

fractionalLiteral :: Parser Rational
fractionalLiteral = (%) <$> integer <* spaces <* strTok "/" <*> natural <* spaces

rationalLiteral :: Parser (RationalLiteral & Meta)
rationalLiteral = meta $ try (FractionalLiteral <$> fractionalLiteral) <|> (IntegerLiteral <$> integer <* spaces)

arrayIndexPattern :: Parser (ArrayIndexPattern & Meta)
arrayIndexPattern = do
  x <- meta $ ArrayIndexPattern <$> variableName
  plus x <|> minus x <|> return x
  where
    plus :: (ArrayIndexPattern & Meta) -> Parser (ArrayIndexPattern & Meta)
    plus x = meta $ do
      strTok "+"
      y <- rationalLiteral
      return $ ArrayIndexPatternPlus x y

    minus :: (ArrayIndexPattern & Meta) -> Parser (ArrayIndexPattern & Meta)
    minus x = meta $ do
      strTok "-"
      y <- rationalLiteral
      return $ ArrayIndexPatternMinus x y

variableWritePattern :: Parser (VariableWritePattern & Meta)
variableWritePattern = meta $ VariableWritePattern
                       <$> variableName <*> (try indexing <|> return [])
  where indexing =
                       strTok "["
                       *> sepBy arrayIndexPattern (strTok ",")
                       <*  strTok "]"

atomicExpression :: Parser (Expression & Meta)
atomicExpression = (meta $ try $ RationalLiteralAtom <$> rationalLiteral)
                   <|> (meta $ try $ VariableAtom <$> variableWritePattern)
                   <|> (strTok "(" *> atomicExpression  <* strTok ")")



expression :: Parser (Expression & Meta)
expression = buildExpressionParser [[unary "+", unary "-"],
                                    [binary "*", binary "/"],
                                    [binary "+", binary "-"]] atomicExpression
  where
    binary :: String -> Operator Parser (Expression & Meta)
    binary str = (\p -> Infix p AssocLeft) $ do
      m <- metadata
      strTok str
      return (\a b -> Meta m (BinaryExpr (pack str) a b))
    unary :: String -> Operator Parser (Expression & Meta)
    unary str = Prefix $ do
      m <- metadata
      strTok str
      return (\a -> Meta m (UnaryExpr (pack str) a))



wholeType :: Parser (WholeType & Meta)
wholeType = meta $ WholeType <$> variableNameText

statementTerminator :: Parser ()
statementTerminator = strTok ";"

statement :: Parser (Statement & Meta)
statement = meta $ (try dec <|> sub) <* statementTerminator
  where
    dec = Declaration <$> variableName <* strTok "::" <*> wholeType
    sub = Substitution <$> variableWritePattern <* strTok "=" <*> expression

program :: Parser (Program & Meta)
program = meta $ Program <$> many statement
