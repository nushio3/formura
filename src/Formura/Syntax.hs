{-|
Module      : Language.Formura.Syntax
Description : formura syntax elements
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

Components for syntatic elements of formura.
-}

{-# LANGUAGE DataKinds, DeriveDataTypeable, DeriveFunctor, DeriveFoldable, DeriveGeneric,
DeriveTraversable, FlexibleContexts, FlexibleInstances, MultiParamTypeClasses,
PatternSynonyms, TemplateHaskell, ViewPatterns #-}

module Formura.Syntax where

import Control.Lens hiding (op)
import Data.List (intercalate)
import Data.Typeable
import GHC.Generics
import qualified Test.QuickCheck as Q

import Formura.Language.Combinator
import Formura.Vec

-- * Syntactical Elements

-- ** Elemental types

data ElemTypeF x = ElemTypeF IdentName
                 deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable)

pattern ElemType x <- ((^? match) -> Just (ElemTypeF x)) where ElemType x = match # ElemTypeF x



data FunTypeF x = FunTypeF
                deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable)

pattern FunType <- ((^? match) -> Just FunTypeF) where FunType = match # FunTypeF


data TopTypeF x = TopTypeF
                deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable)

pattern TopType <- ((^? match) -> Just TopTypeF) where TopType = match # TopTypeF


-- ** Identifier terms
type IdentName = String

data IdentF x = IdentF IdentName
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable)

-- | smart pattern
pattern Ident xs <- ((^? match) -> Just (IdentF xs)) where
  Ident xs = match # IdentF xs



-- ** Tuple

-- | The functor for tuple.
data TupleF x = TupleF [x]
             deriving (Eq, Ord, Functor, Foldable, Traversable, Typeable)
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

-- | Rational Literal
data ImmF x = ImmF Rational
            deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable)

pattern Imm r <- ((^? match) -> Just (ImmF r)) where
  Imm r = match # ImmF r

instance Q.Arbitrary x => Q.Arbitrary (ImmF x) where
  arbitrary = ImmF <$> Q.arbitrary
  shrink (ImmF x) = map ImmF $ Q.shrink x

-- | Boolean Literal
data ImmBoolF x = ImmBoolF Bool
                deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable)

pattern ImmBool r <- ((^? match) -> Just (ImmBoolF r)) where
  ImmBool r = match # ImmBoolF r


-- | Infix and Postfix operators
data OperatorF x
  = UniopF IdentName x
  | BinopF IdentName x x
  | TriopF IdentName x x x
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable, Generic)

instance Q.Arbitrary x => Q.Arbitrary (OperatorF x) where
  arbitrary =
    let compounds =
          [ UniopF "+" <$> Q.arbitrary
          , UniopF "-" <$> Q.arbitrary
          , BinopF "+" <$> Q.arbitrary <*> Q.arbitrary
          , BinopF "-" <$> Q.arbitrary <*> Q.arbitrary
          , BinopF "*" <$> Q.arbitrary <*> Q.arbitrary
          , BinopF "/" <$> Q.arbitrary <*> Q.arbitrary
          ]
        go n
          | n <= 1 = UniopF "+" <$> Q.arbitrary
          | otherwise = Q.oneof compounds
    in Q.sized go
  shrink = Q.genericShrink

-- | smart patterns
pattern Uniop op a <- ((^? match) -> Just (UniopF op a)) where
  Uniop op a = match # UniopF op a
pattern Binop op a b <- ((^? match) -> Just (BinopF op a b)) where
  Binop op a b = match # BinopF op a b
pattern Triop op a b c <- ((^? match) -> Just (TriopF op a b c)) where
  Triop op a b c = match # TriopF op a b c

-- ** Structures and Element Access

data GridF x = GridF (Vec NPlusK) x
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable)

pattern Grid args x <- ((^? match) -> Just (GridF args x )) where
  Grid args x = match # GridF args x

data GridTypeF x = GridTypeF (Vec Rational) x
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable)

pattern GridType args x <- ((^? match) -> Just (GridTypeF args x )) where
  GridType args x = match # GridTypeF args x


data VectorF x = VectorF IdentName x
                   deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable)

pattern Vector args x <- ((^? match) -> Just (VectorF args x )) where
  Vector args x = match # VectorF args x

data VectorTypeF x = VectorTypeF Int x
                   deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable)

pattern VectorType args x <- ((^? match) -> Just (VectorTypeF args x )) where
  VectorType args x = match # VectorTypeF args x

-- ** Functional Program Constituent

-- | Function application
data ApplyF x = ApplyF x x
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable)

pattern Apply f x <- ((^? match) -> Just (ApplyF f x)) where
  Apply f x = match # ApplyF f x

-- | Let clause
data LetF x = LetF (BindingF x) x
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable)

pattern Let binds x <- ((^? match) -> Just (LetF binds x)) where
  Let binds x = match # LetF binds x

-- | Lambda expression. Lambda expression is not to recurse into its RExpr.
data LambdaF x = LambdaF LExpr RExpr
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable)

pattern Lambda args x <- ((^? match) -> Just (LambdaF args x )) where
  Lambda args x = match # LambdaF args x

-- | Bunch of bindings
data BindingF x = BindingF [StatementF x]
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable)

pattern Binding xs <- ((^? match) -> Just (BindingF xs )) where
  Binding xs = match # BindingF xs

-- | Statement
data StatementF x
  = SubstF LExpr x
  -- ^ substitution
  | TypeDeclF TypeExpr LExpr
  -- ^ type declaration
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable)
pattern Subst l r <- ((^? match) -> Just (SubstF l r)) where
  Subst l r = match # SubstF l r
pattern TypeDecl t x <- ((^? match) -> Just (TypeDeclF t x)) where
  TypeDecl t x = match # TypeDeclF t x

-- * Program Components

type ConstRationalExprF = Sum '[ ApplyF, OperatorF, ImmF ]
type ConstRationalExpr  = Lang '[ ApplyF, OperatorF, ImmF ]

data NPlusK = NPlusK IdentName Rational
             deriving (Eq, Ord, Show)
instance Num NPlusK where
  fromInteger n = NPlusK "" $ fromInteger n
  (+)    = error "instance Num NPlusK is only partially defined"
  (*)    = error "instance Num NPlusK is only partially defined"
  (-)    = error "instance Num NPlusK is only partially defined"
  abs    = error "instance Num NPlusK is only partially defined"
  signum = error "instance Num NPlusK is only partially defined"
-- TODO: correctly deal with NPlusK pattern with identifier abbreviation.

instance Field1 NPlusK NPlusK IdentName IdentName where
  _1 = lens (\(NPlusK x _) -> x) (\(NPlusK _ y) x -> NPlusK x y)
instance Field2 NPlusK NPlusK Rational Rational where
  _2 = lens (\(NPlusK _ y) -> y) (\(NPlusK x _) y -> NPlusK x y)

type TypeExprF = Sum '[ TopTypeF, GridTypeF, TupleF, VectorTypeF, FunTypeF , ElemTypeF ]
type TypeExpr  = Fix TypeExprF

type LExprF = Sum '[ GridF, TupleF, VectorF, IdentF ]
type LExpr  = Fix LExprF

type RExprF = Sum '[ LetF, LambdaF, ApplyF, GridF, TupleF, OperatorF, IdentF, ImmF ]
type RExpr  = Fix RExprF

data SpecialDeclaration = DimensionDeclaration Int
                        | AxesDeclaration [IdentName]
             deriving (Eq, Ord, Show)

data Program = Program
               { _programSpecialDeclarations :: [SpecialDeclaration]
               , _programBinding :: BindingF RExpr}
             deriving (Eq, Ord, Show)
makeLenses ''Program
