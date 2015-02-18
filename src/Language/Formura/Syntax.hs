{-# LANGUAGE ConstraintKinds, RankNTypes, OverloadedStrings, TypeFamilies, TypeOperators #-}
module Language.Formura.Syntax where

import           Control.Lens.Cons (_Cons)
import           Data.Char (isAlphaNum, isAlpha)
import           Data.Text (Text)

import Language.Formura.AST as AST
import Language.Formura.Syntax.Combinator as S -- hiding (spaces)

type Syn a = SyntaxF syn => syn () a



-- | A sequence of characters suitable for variable names.
variableNameText :: SyntaxF syn => syn () Text
variableNameText = _Cons /$/ S.satisfy isAlpha /*/ S.takeWhile isAlphaNum

variableName :: Syn (VariableName & Meta)
variableName = meta $ _VariableName /$/ variableNameText

wholeType :: Syn (WholeType & Meta)
wholeType = meta $ _WholeType /$/ variableNameText

statementTerminator :: Syn ()
statementTerminator = (try $ morphed /$/ char ';' /*/ spaces_ /*/ endOfLine)
                      /+/ (char ';')

statement :: Syn (Statement & Meta)
statement = meta $ _Declaration /$~ variableName  /*/ spaces
                                /*/ S.string "::" /*/ spaces
                                /*/ wholeType     /*/ spaces
                                /*/ statementTerminator  /*/ spaces_

program :: Syn (Program & Meta)
program = meta $ _Program /$~ simany statement
