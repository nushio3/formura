{-|
Module      : Language.Formura.Syntax
Description : formura syntax elements
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

Components for syntatic elements of formura.
-}

{-# LANGUAGE DataKinds, DeriveFunctor, DeriveFoldable,
DeriveTraversable, FlexibleContexts, FlexibleInstances,
PatternSynonyms, TemplateHaskell, ViewPatterns #-}

module Formura.Syntax where

import Control.Lens hiding (op)
import Data.List (intercalate)
import qualified Test.QuickCheck as Q

import Formura.Language.Combinator


-- * Syntactical Elements

-- ** Elemental types

data ElementalTypeF x = TInt | TRational | TFloat | TDouble | TReal | TComplexFloat | TComplexDouble | TComplexReal

-- ** Identifier terms
type IdentName = String

data IdentF x = IdentF IdentName
             deriving (Eq, Show, Ord, Functor, Foldable, Traversable)

-- | smart pattern
pattern Ident xs <- ((^? match) -> Just (IdentF xs)) where
  Ident xs = match # IdentF xs



-- ** Tuple

-- | The functor for tuple.
data TupleF x = TupleF [x]
             deriving (Eq, Ord, Functor, Foldable, Traversable)
instance Show x => Show (TupleF x) where
  show (TupleF xs) = "(" ++ (intercalate ", " $ map show xs) ++ ")"

instance Q.Arbitrary x => Q.Arbitrary (TupleF x) where
  arbitrary = Q.sized $ \n -> do
    k <- Q.choose (2,n)
    xs <- Q.scale (`div` (1+k)) $ Q.vector k
    return $ TupleF xs
  shrink (TupleF xs) = map TupleF $ Q.shrink xs

-- | smart pattern
pattern Tuple xs <- ((^? match) -> Just (TupleF xs)) where
  Tuple xs = match # TupleF xs



-- ** Arithmetic elements

data ArithF x = ImmF Rational
              | UniopF IdentName x
              | BinopF IdentName x x
              | TriopF IdentName x x x
             deriving (Eq, Show, Ord, Functor, Foldable, Traversable)

instance Q.Arbitrary x => Q.Arbitrary (ArithF x) where
  arbitrary =
    let compounds =
          [ ImmF <$> Q.arbitrary
          , UniopF "-" <$> Q.arbitrary
          , BinopF "+" <$> Q.arbitrary <*> Q.arbitrary
          , BinopF "-" <$> Q.arbitrary <*> Q.arbitrary
          , BinopF "*" <$> Q.arbitrary <*> Q.arbitrary
          , BinopF "/" <$> Q.arbitrary <*> Q.arbitrary
          ]
        go n
          | n <= 1 = ImmF <$> Q.arbitrary
          | otherwise = Q.oneof compounds
    in Q.sized go

-- | smart patterns
pattern Imm r <- ((^? match) -> Just (ImmF r)) where
  Imm r = match # ImmF r
pattern Uniop op a <- ((^? match) -> Just (UniopF op a)) where
  Uniop op a = match # UniopF op a
pattern Binop op a b <- ((^? match) -> Just (BinopF op a b)) where
  Binop op a b = match # BinopF op a b
pattern Triop op a b c <- ((^? match) -> Just (TriopF op a b c)) where
  Triop op a b c = match # TriopF op a b c



-- ** Element access expressions

data GridAtF y x = GridAtF [y] x
             deriving (Eq, Show, Ord, Functor, Foldable, Traversable)

pattern GridAt args x <- ((^? match) -> Just (GridAtF args x )) where
  GridAt args x = match # GridAtF args x

data TupleAtF x = TupleAtF [x] x
             deriving (Eq, Show, Ord, Functor, Foldable, Traversable)

pattern TupleAt args x <- ((^? match) -> Just (TupleAtF args x )) where
  TupleAt args x = match # TupleAtF args x

data VectorAtF y x = VectorAtF y x
                   deriving (Eq, Show, Ord, Functor, Foldable, Traversable)

-- * Expressions and Program Components

type ConstRationalExpr = Lang '[ ArithF ]

data NPlusKPattern = NPlusKPattern IdentName ConstRationalExpr

data NPlusK = NPlusK IdentName Rational


type TypeExpr = Lang '[ GridAtF Rational, TupleF, VectorAtF Int, ElementalTypeF ]

type LExpr = Lang '[ GridAtF NPlusKPattern, TupleF, VectorAtF IdentName, IdentF ]

type RExpr = Lang '[ TupleAtF, GridAtF NPlusKPattern, IdentF ]
