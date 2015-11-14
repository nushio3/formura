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

data ElemTypeF x = ElemTypeF IdentName
                      deriving (Eq, Ord, Show)

pattern ElemType x <- ((^? match) -> Just (ElemTypeF x)) where ElemType x = match # ElemTypeF x


data FunTypeF x = FunTypeF
                deriving (Eq, Ord, Show)

pattern FunType <- ((^? match) -> Just FunTypeF) where FunType = match # FunTypeF

-- ** Identifier terms
type IdentName = String

data IdentF x = IdentF IdentName
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

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
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

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

-- ** Structures and Element Access

data GridF y x = GridF [y] x
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

pattern Grid args x <- ((^? match) -> Just (GridF args x )) where
  Grid args x = match # GridF args x

data VectorF y x = VectorF y x
                   deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

pattern Vector args x <- ((^? match) -> Just (VectorF args x )) where
  Vector args x = match # VectorF args x

-- ** Functional Program Constituent

-- | Function application
data ApplyF x = ApplyF x x
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

pattern Apply f x <- ((^? match) -> Just (ApplyF f x)) where
  Apply f x = match # ApplyF f x

-- | Let clause
data LetF x = LetF (BindingF x) x
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

pattern Let binds x <- ((^? match) -> Just (LetF binds x )) where
  Let binds x = match # LetF binds x

-- | Lambda expression
data LambdaF x = LambdaF LExpr x
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

pattern Lambda args x <- ((^? match) -> Just (LambdaF args x )) where
  Lambda args x = match # LambdaF args x

-- | Bunch of bindings
data BindingF x = BindingF [StatementF x]
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

pattern Binding xs <- ((^? match) -> Just (BindingF xs )) where
  Binding xs = match # BindingF xs

-- | Statement
data StatementF x
  = SubstF LExpr x
  -- ^ substitution
  | TypeDeclF IdentName TypeExpr
  -- ^ type declaration
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable)
pattern Subst l r <- ((^? match) -> Just (SubstF l r)) where
  Subst l r = match # SubstF l r
pattern TypeDecl x t <- ((^? match) -> Just (TypeDeclF x t)) where
  TypeDecl x t = match # TypeDeclF x t


-- * Program Components

type ConstRationalExpr = Lang '[ ArithF ]

data NPlusKPattern = NPlusKPattern IdentName ConstRationalExpr
             deriving (Eq, Ord, Show)

data NPlusK = NPlusK IdentName Rational
             deriving (Eq, Ord, Show)

type TypeExpr = Lang '[ GridF Rational, TupleF, VectorF Int, FunTypeF , ElemTypeF ]

type LExpr = Lang '[ GridF NPlusK, TupleF, VectorF IdentName, IdentF ]

type RExpr = Lang '[ LetF, LambdaF, ApplyF, GridF NPlusK, TupleF, ArithF, IdentF ]

data SpecialDeclaration = DimensionDeclaration Int
                        | AxesDeclaration [IdentName]
                        | InitialFunctionDeclaration IdentName
                        | StepFunctionDeclaration IdentName
             deriving (Eq, Ord, Show)

data Program = Program
               { _programSpecialDeclarations :: SpecialDeclaration
               , _programBinding :: Lang '[BindingF]}
             deriving (Eq, Ord, Show)
