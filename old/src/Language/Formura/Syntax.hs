{-# LANGUAGE ConstraintKinds, RankNTypes, OverloadedStrings, TypeFamilies, TypeOperators #-}
module Language.Formura.Syntax where

import           Control.Lens.Iso (iso)
import           Control.Lens.Cons (_Cons)
import           Data.Char (isAlphaNum, isAlpha)
import           Data.Text (Text)
import           Data.Ratio

import Language.Formura.AST as AST
import Language.Formura.Syntax.Combinator as S -- hiding (spaces)

type Syn a = SyntaxF syn => syn () a


-- | atomic token parsers. These parsers should consume all the extra spaces.



-- | A sequence of characters suitable for variable names.
variableNameText :: Syn Text
variableNameText = _Cons /$/ S.satisfy isAlpha /*/ S.takeWhile isAlphaNum

variableName :: Syn (VariableName & Meta)
variableName = meta $ _VariableName /$~ variableNameText /*/ spaces_

naturalLiteral :: Syn Integer
naturalLiteral = morphed /$/ (decimal :: Syn Integer) /*/ spaces_

fractionalLiteral :: Syn Rational
fractionalLiteral =  f 
                    /$~ signed naturalLiteral /*/ char '/' /*/ spaces_ /*/ naturalLiteral /*/ spaces_
  where
    f :: ASemiIso' Rational (Integer, Integer)
    f = iso (\r -> (numerator r, denominator r)) (uncurry (%))
      
rationalLiteral :: Syn (RationalLiteral & Meta)
rationalLiteral = meta $ (try $ _FractionalLiteral /$/ fractionalLiteral) /+/ _IntegerLiteral /$/ (signed naturalLiteral)
  
arrayIndexPattern :: Syn (ArrayIndexPattern & Meta)
arrayIndexPattern = meta $  try pplus /+/ try pminus  /+/ pstd
  where
    pplus :: Syn (ArrayIndexPattern Meta)
    pplus = _ArrayIndexPatternPlus /$~ arrayIndexPattern /*/ string "+" /*/ rationalLiteral
    pminus  :: Syn (ArrayIndexPattern Meta)
    pminus = _ArrayIndexPatternMinus /$~ arrayIndexPattern /*/ string "-" /*/ rationalLiteral
    pstd :: Syn (ArrayIndexPattern Meta)
    pstd = _ArrayIndexPattern /$~ variableName

    pplus2 :: (ArrayIndexPattern & Meta) -> Syn (ArrayIndexPattern Meta)
    pplus2 x = _ArrayIndexPatternPlus /$~ 
              siarr (constant x) /*/
             string "+" /*/ rationalLiteral 
             
-- The language is not sophisticated enough, and I am not smart enough to support invertible syntax.
    
{-             
    pplus3 :: SyntaxF syn => syn (ArrayIndexPattern & Meta) (ArrayIndexPattern & Meta)
    pplus3 = sibind $ iso (\aip -> constant aip #>> meta (_ArrayIndexPatternPlus /$~ siarr (constant aip) /*/ string "+" /*/ rationalLiteral)) (\ArrayIndexPatternPlus -> )
  -} 
{-
    pplus3 :: Syn (ArrayIndexPattern Meta)
    pplus3 x = _ArrayIndexPatternPlus /$~ 
              siarr (constant x) /*/
             string "+" /*/ rationalLiteral 
-}

variableWritePattern :: Syn (VariableWritePattern & Meta)
variableWritePattern = meta $ _VariableWritePattern /$~ variableName /*/ string "[" /*/ sepBy arrayIndexPattern (string ",") /*/ string "]"


wholeType :: Syn (WholeType & Meta)
wholeType = meta $ _WholeType /$/ variableNameText

statementTerminator :: Syn ()
statementTerminator = (try $ morphed /$/ char ';' /*/ spaces_ /*/ endOfLine)
                      /+/ (char ';')

statement :: Syn (Statement & Meta)
statement = meta $ try dec  /+/ sub
  where
    dec = _Declaration /$~ variableName    /*/ spaces
                                /*/ S.string "::"   /*/ spaces
                                /*/ wholeType       /*/ spaces_
                                /*/ statementTerminator  /*/ spaces_
    sub :: Syn (Statement Meta)                                
    sub = _Substitution /$~ variableWritePattern/*/ spaces
                                /*/ S.string "="   /*/ spaces
                                /*/ variableWritePattern       /*/ spaces_
                                /*/ statementTerminator  /*/ spaces_

program :: Syn (Program & Meta)
program = meta $ _Program /$~ simany statement
