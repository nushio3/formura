{-|
Module      : Language.Formura.Syntax
Description : formura syntax elements
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

Components for syntatic elements of formura.
-}

{-# LANGUAGE DeriveFunctor, DeriveFoldable, DeriveGeneric,
DeriveTraversable, FlexibleContexts, FlexibleInstances,
PatternSynonyms, TemplateHaskell, ViewPatterns #-}

module Formura.Syntax where

import Control.Lens hiding (op)
import Data.List (intercalate)
import GHC.Generics
import qualified Test.QuickCheck as Q

import Language.Combinator


-- * Common factors

type IdentName = String

-- * Tuple

-- | The functor for tuple.
data TupleF x = TupleF [x]
             deriving (Eq, Ord, Functor, Foldable, Traversable, Generic)
instance Show x => Show (TupleF x) where
  show (TupleF xs) = "(" ++ (intercalate ", " $ map show xs) ++ ")"

instance Q.Arbitrary x => Q.Arbitrary (TupleF x) where
  arbitrary = Q.sized $ \n -> do
    k <- Q.choose (2,n)
    xs <- Q.scale (`div` (1+k)) $ Q.vector k
    return $ TupleF xs
  shrink (TupleF xs) = map TupleF $ Q.shrink xs

-- | specialized prism
tuple :: MatchPrism TupleF
tuple = match

-- | smart patterns
pattern Tuple xs <- ((^? tuple) -> Just (TupleF xs)) where
  Tuple xs = tuple # TupleF xs

-- * Arithmetic elements

data ArithF x = ImmF Rational
              | UniopF IdentName x
              | BinopF IdentName x x
              | TriopF IdentName x x x
             deriving (Eq, Show, Ord, Functor, Foldable, Traversable, Generic)

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

-- | specialized prism
arith :: MatchPrism ArithF
arith = match

-- | smart patterns
pattern Imm r <- ((^? arith) -> Just (ImmF r)) where
  Imm r = arith # ImmF r
pattern Uniop op a <- ((^? arith) -> Just (UniopF op a)) where
  Uniop op a = arith # UniopF op a
pattern Binop op a b <- ((^? arith) -> Just (BinopF op a b)) where
  Binop op a b = arith # BinopF op a b
pattern Triop op a b c <- ((^? arith) -> Just (TriopF op a b c)) where
  Triop op a b c = arith # TriopF op a b c
