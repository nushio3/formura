{-# LANGUAGE Arrows, ConstraintKinds, KindSignatures, TypeFamilies, TypeOperators #-}
module Language.Formura.Syntax.Combinator
(
   module Control.Category.Structures,
  module           Control.Lens.SemiIso,
   module Control.SIArrow,
   module Data.Syntax,
   module Data.Syntax.Combinator,
   module Data.Syntax.Char,
   SyntaxF(..),
   meta)
       where

import           Control.Category.Structures
import           Control.SIArrow
import           Control.Lens.SemiIso
import           Data.Syntax
import           Data.Syntax.Combinator
import           Data.Syntax.Char

import Language.Formura.AST

infix 0 ?>

class SyntaxText syn => SyntaxF syn where
  -- | Give a name to the underlying syntax component.
  (?>) :: String -> syn () a -> syn () a
  -- | Parse the parser metadata at the position; prints nothing.
  metadata :: syn () Metadata
  -- | Create the trying parser.
  try :: syn () a -> syn () a



meta :: SyntaxF syn => syn () (s Meta) -> syn () (s & Meta)
meta parseS =
 _Meta /$~  metadata /*/ parseS


