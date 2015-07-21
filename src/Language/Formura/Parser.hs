{-# LANGUAGE RankNTypes #-}
module Language.Formura.Parser where

import qualified Compiler.Hoopl as H
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

rExpr :: Parser F.RExpr
rExpr = do
  t <- identTerm
  mo <- optional offset
  case mo of
   Just o -> return $ F.RShift o t
   Nothing -> return t
  where
    identTerm = F.RLoad <$> identifierName

statement :: Parser (F.Insn () H.O H.O)
statement = do
  rhs <- rExpr
  keywordSymbol "="
  lhs <- expr
  return $ F.Assign () rhs lhs


expr :: Parser F.Expr
expr = X.buildExpressionParser exprTable term <?> "expression"

offset :: Parser F.Offset
offset = brackets $ commaSep $ do
  mr <- optional rationalExpr
  case mr of
   Just x  -> return x
   Nothing -> return 0

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

  optional statementDelimiter

  body <- functionBody

  keyword "end"
  keyword "function"

  return F.Function
    { F._functionName = funcName
    , F._entryVars = inArgs
    , F._exitVars = outArgs
    , F._functionBody = body
    }


functionBody :: Parser F.FunctionBody
functionBody = do
  stmts <- statement `sepEndBy` statementDelimiter
  let mids = H.mkMiddles stmts
  return mids
--      g01 = H.mkFirst $ F.Entry ()
--      g99 = H.mkLast  $ F.Exit ()
--  return $ g01 H.<*> mids H.<*> g99

statementDelimiter :: Parser ()
statementDelimiter = (newline >> spaces >> return ()) <|>(keyword ";" >> return ())


exprTable :: [[X.Operator Parser F.Expr]]
exprTable =
  [
    [postfixOffset]
  , [binary "**" F.Pow X.AssocRight]
  , [binary "*" F.Mul X.AssocLeft, binary "/" F.Div X.AssocLeft ]
  , [prefix "-" F.Neg, prefix' "+" id ]
  , [binary "+" F.Add X.AssocLeft, binary "-" F.Sub X.AssocLeft ]
  ]

  where
    binary  name fun assoc = X.Infix (F.Binop fun <$ keywordSymbol name) assoc
    prefix  name fun       = X.Prefix (F.Uniop fun <$ keywordSymbol name)
    prefix' name fun       = X.Prefix (fun <$ keywordSymbol name)
    postfix name fun       = X.Postfix (F.Uniop fun <$ keywordSymbol name)
    postfixOffset = X.Postfix $ do
      off <- offset
      return $ F.Shift off

rationalExpr :: Parser Rational
rationalExpr = X.buildExpressionParser rationalExprTable rational <?> "const rational expression"


rationalExprTable :: [[X.Operator Parser Rational]]
rationalExprTable =
  [
    [binary "*" (*) X.AssocLeft, binary "/" (/) X.AssocLeft ]
  , [prefix "-" negate, prefix "+" id ]
  , [binary "+" (+) X.AssocLeft, binary "-" (-) X.AssocLeft ]
  ]

  where
    binary  name fun assoc = X.Infix (fun <$ keywordSymbol name) assoc
    prefix  name fun       = X.Prefix (fun <$ keywordSymbol name)
    postfix name fun       = X.Postfix (fun <$ keywordSymbol name)
