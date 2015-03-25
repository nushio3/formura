module Language.Formura.Enforest where

import Data.List.Split (wordsBy)

import Language.Formura.Parser

enforest :: Term -> IO ()
enforest (ListTerm _ _ ts) =
  mapM_ print $ wordsBy isStatementDelimiter ts
