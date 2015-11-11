{-|
Module      : Language.Formura.Syntax
Description : formura syntax elements
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

Components for syntatic elements of formura
-}

module Language.Formura.Syntax where



data TupleF x = TupleF [x]
             deriving (Eq, Ord, Functor, Foldable, Traversable)
instance Show x => Show (TupleF x) where
  show (TupleF xs) = let c '[' = '('
                         c ']' = ')'
                         c x   = x
                     in map c $ show xs
tuple :: MatchPrism TupleF
tuple = match
