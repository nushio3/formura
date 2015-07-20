module Language.Formura.Parser where

import Language.Formura.Parser.Combinator



term :: P F.Expr
term = litTerm <|> symTerm
  where
    litTerm = F.Lit <$> rational
    symTerm = F.Load <$> symbolName

expr :: P F.Expr
expr = P.buildExpressionParser [] term


----------------------------------------------------------------
-- Parser Utilities
----------------------------------------------------------------
