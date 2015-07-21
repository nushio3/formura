{-# LANGUAGE RankNTypes #-}
module Language.Formura.Parser where

import           Control.Applicative
import qualified Text.Parser.Expression as X
import           Text.Trifecta hiding (Parser)

import           Language.Formura.Parser.Combinator
import qualified Language.IR.Frontend as F



term :: Parser F.Expr
term = parens expr<|> litTerm <|> identTerm <?> "term"
  where
    litTerm = F.Lit <$> rational
    identTerm = F.Load <$> identifierName

expr :: Parser F.Expr
expr = X.buildExpressionParser exprTable term <?> "expression"

offset :: Parser F.Offset
offset = brackets $ commaSep $ rational

program :: Parser [F.Function]
program = function `sepEndBy` statementDelimiter

function :: Parser F.Function
function = do
  keyword "begin"
  keyword "function"

  outArgs <- parens $ commaSep $ identifierName
  keywordSymbol "="
  funcName <- identifierName <?> "the function name"
  inArgs <- parens $ commaSep $ identifierName

  body <- functionBody

  keyword "end"
  keyword "function"

  return F.Function
    { F._functionName = funcName
    , F._entryVars = inArgs
    , F._exitVars = outArgs
    , F._functionBody = F.emptyGraph
    }


functionBody :: Parser F.ClosedInsnGraph
functionBody = sepEndBy spaces statementDelimiter >> return F.emptyGraph

statementDelimiter :: Parser ()
statementDelimiter = (newline >> return ()) <|>(keyword ";" >> return ())


exprTable :: [[X.Operator Parser F.Expr]]
exprTable =
  [
    [binary "**" F.Pow X.AssocRight]
  , [binary "*" F.Mul X.AssocLeft, binary "/" F.Div X.AssocLeft ]
  , [prefix "-" F.Neg, prefix' "+" id ]
  , [binary "+" F.Add X.AssocLeft, binary "-" F.Sub X.AssocLeft ]
  ]

  where
    binary  name fun assoc = X.Infix (F.Binop fun <$ keywordSymbol name) assoc
    prefix  name fun       = X.Prefix (F.Uniop fun <$ keywordSymbol name)
    prefix' name fun       = X.Prefix (fun <$ keywordSymbol name)
    postfix name fun       = X.Postfix (F.Uniop fun <$ keywordSymbol name)
