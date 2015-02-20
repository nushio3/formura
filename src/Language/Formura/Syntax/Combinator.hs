{-# LANGUAGE Arrows, ConstraintKinds, KindSignatures, TypeFamilies, TypeOperators #-}
module Language.Formura.Syntax.Combinator 
(  
   module Control.Category.Structures,
   module Control.SIArrow,
   module Data.Syntax, 
   module Data.Syntax.Char, 
   SyntaxF(..),
   meta)       
       where

import           Control.Arrow
import           Control.Category.Structures
import           Control.SIArrow
import           Data.Syntax
import           Data.Syntax.Char
import qualified Text.Trifecta as Δ

import Language.Formura.AST

infix 0 ?>

class (Arrow syn, Syntax syn) => SyntaxF syn where
  -- | Give a name to the underlying syntax component.
  (?>) :: String -> syn () a -> syn () a
  -- | Parse the parser metadata at the position; prints nothing.
  metadata :: syn () Metadata


meta :: SyntaxF syn => syn () (s Meta) -> syn () (s & Meta)
meta parseS = proc u -> do
  s <- parseS -< u
  m <- metadata -< u
  returnA -< Meta m s
  
  