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
PatternSynonyms, StandaloneDeriving, TemplateHaskell, TypeFamilies, ViewPatterns #-}

module Formura.Syntax where

import Algebra.Lattice
import Control.Lens hiding (op)
import Data.Data
import Data.List (intercalate)
import qualified Data.Set as S
import Data.Typeable
import GHC.Generics
import qualified Test.QuickCheck as Q

import Formura.Language.Combinator
import Formura.Vec

-- * Syntactical Elements

-- ** Elemental types

data ElemTypeF x = ElemTypeF IdentName
                 deriving (Eq, Ord, Functor, Foldable, Traversable, Typeable, Data)
instance Show (ElemTypeF x) where
  show (ElemTypeF n) = n

pattern ElemType x <- ((^? match) -> Just (ElemTypeF x)) where ElemType x = match # ElemTypeF x

data TypeModifier = TMConst | TMManifest | TMExtern
                 deriving (Eq, Ord, Typeable, Data)
instance Show TypeModifier where
  show TMConst = "const"
  show TMManifest = "manifest"
  show TMExtern = "extern"




data FunTypeF x = FunTypeF
                deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable, Data)

pattern FunType <- ((^? match) -> Just FunTypeF) where FunType = match # FunTypeF


data TopTypeF x = TopTypeF
                deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable, Data)

pattern TopType <- ((^? match) -> Just TopTypeF) where TopType = match # TopTypeF


-- ** Identifier terms
type IdentName = String

data IdentF x = IdentF IdentName
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable, Data)

-- | smart pattern
pattern Ident xs <- ((^? match) -> Just (IdentF xs)) where
  Ident xs = match # IdentF xs



-- ** Tuple

-- | The functor for tuple.
data TupleF x = TupleF [x]
             deriving (Eq, Ord, Functor, Foldable, Traversable, Typeable, Data)
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
            deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable, Data)

pattern Imm r <- ((^? match) -> Just (ImmF r)) where
  Imm r = match # ImmF r

instance Q.Arbitrary x => Q.Arbitrary (ImmF x) where
  arbitrary = ImmF <$> Q.arbitrary
  shrink (ImmF x) = map ImmF $ Q.shrink x

-- | Boolean Literal
data ImmBoolF x = ImmBoolF Bool
                deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable, Data)

pattern ImmBool r <- ((^? match) -> Just (ImmBoolF r)) where
  ImmBool r = match # ImmBoolF r


-- | Infix and Postfix operators
data OperatorF x
  = UniopF IdentName x
  | BinopF IdentName x x
  | TriopF IdentName x x x
  | NaryopF IdentName [x]
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable, Data, Generic)

comparisonOperatorNames :: S.Set IdentName
comparisonOperatorNames = S.fromList $ words "<= == != >= < >"

minMaxOperatorNames :: S.Set IdentName
minMaxOperatorNames = S.fromList $ words "<? >? <%"


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
pattern Naryop op xs <- ((^? match) -> Just (NaryopF op xs)) where
  Naryop op xs = match # NaryopF op xs

-- ** Structures and Element Access

data GridF x = GridF (Vec NPlusK) x
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable, Data)

pattern Grid args x <- ((^? match) -> Just (GridF args x )) where
  Grid args x = match # GridF args x

data GridTypeF x = GridTypeF (Vec Rational) x
             deriving (Eq, Ord, Functor, Foldable, Traversable, Typeable, Data)
instance Show x => Show (GridTypeF x) where
  show (GridTypeF v x) = show x ++ show v

pattern GridType args x <- ((^? match) -> Just (GridTypeF args x )) where
  GridType args x = match # GridTypeF args x


data VectorF x = VectorF IdentName x
                   deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable, Data)

pattern Vector args x <- ((^? match) -> Just (VectorF args x )) where
  Vector args x = match # VectorF args x

data VectorTypeF x = VectorTypeF Int x
                   deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable, Data)

pattern VectorType args x <- ((^? match) -> Just (VectorTypeF args x )) where
  VectorType args x = match # VectorTypeF args x

-- ** Functional Program Constituent

-- | Function application
data ApplyF x = ApplyF x x
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable, Data)

pattern Apply f x <- ((^? match) -> Just (ApplyF f x)) where
  Apply f x = match # ApplyF f x

-- | Let clause
data LetF x = LetF (BindingF x) x
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable, Data)

pattern Let binds x <- ((^? match) -> Just (LetF binds x)) where
  Let binds x = match # LetF binds x

-- | Lambda expression. Lambda expression is not to recurse into its RExpr.
data LambdaF x = LambdaF LExpr RExpr
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable, Data)

pattern Lambda args x <- ((^? match) -> Just (LambdaF args x )) where
  Lambda args x = match # LambdaF args x

-- | Bunch of bindings
data BindingF x = BindingF [StatementF x]
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable, Data)

pattern Binding xs <- ((^? match) -> Just (BindingF xs )) where
  Binding xs = match # BindingF xs

-- | extract all 'TypeDecl's from the binding
typeDecls :: BindingF x -> [(LExpr, TypeExpr)]
typeDecls (BindingF stmts0) = concat $ flip map stmts0 $ \x -> case x of
        TypeDeclF (ModifiedTypeExpr _ t) l -> case t of
                                               TopType -> []
                                               _ -> [(l,t)]
        _             -> []

-- | extract all 'TypeModifier's from the binding
typeModifiers :: BindingF x -> [(LExpr, TypeModifier)]
typeModifiers (BindingF stmts0) = concat $ flip map stmts0 $ \x -> case x of
  TypeDeclF (ModifiedTypeExpr ms _) l -> [(l,m) | m <- ms]
  _             -> []

-- | extract all the 'Subst'itutions from the binding
substs :: BindingF x -> [(LExpr, x)]
substs (BindingF stmts0) = concat $ flip map stmts0 $ \x -> case x of
        SubstF l r -> [(l, r)]
        _             -> []



-- | Statement
data StatementF x
  = SubstF LExpr x
  -- ^ substitution
  | TypeDeclF ModifiedTypeExpr LExpr
  -- ^ type declaration with modification
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable, Typeable, Data)
pattern Subst l r <- ((^? match) -> Just (SubstF l r)) where
  Subst l r = match # SubstF l r
pattern TypeDecl t x <- ((^? match) -> Just (TypeDeclF t x)) where
  TypeDecl t x = match # TypeDeclF t x

-- * Program Components

type ConstRationalExprF = Sum '[ ApplyF, OperatorF, ImmF ]
type ConstRationalExpr  = Lang '[ ApplyF, OperatorF, ImmF ]

data NPlusK = NPlusK IdentName Rational
             deriving (Eq, Ord, Show, Typeable, Data)
instance Num NPlusK where
  fromInteger n = NPlusK "" $ fromInteger n
  negate (NPlusK ident n) = NPlusK ident (negate n)
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

type TypeExpr  = Fix TypeExprF
type TypeExprF = Sum '[ TopTypeF, GridTypeF, TupleF, VectorTypeF, FunTypeF , ElemTypeF ]
-- instance Data TypeExpr where
--   gfoldl (*) z = go
--     where
--       go TopType = z TopType
--       go (GridType r x) = z GridType * r * x
--       go (Tuple xs) = z Tuple * xs
--       go (VectorType n x) = z VectorType * n * x
--       go FunType = z FunType
--       go (ElemType tn) = z ElemType * tn
-- --   gunfold = undefined
-- --   toConstr = undefined
-- --   dataTypeOf = undefined

data ModifiedTypeExpr = ModifiedTypeExpr [TypeModifier] TypeExpr
             deriving (Eq, Ord, Data)

instance Show ModifiedTypeExpr where
  show (ModifiedTypeExpr ms t) = unwords (map show ms) ++ " " ++ show t


type LExpr  = Fix LExprF
type LExprF = Sum '[ GridF, TupleF, VectorF, IdentF ]
-- instance Data LExpr where
--   gfoldl (*) z = go
--     where
--       go (Grid p x) = z Grid * p * x
--       go (Tuple xs) = z Tuple * xs
--       go (Vector n x) = z Vector * n * x
--       go (Ident n) = z Ident * n

type TupleOfIdents  = Fix TupleOfIdentsF
type TupleOfIdentsF = Sum '[ TupleF, IdentF ]

type RExpr  = Fix RExprF
type RExprF = Sum '[ LetF, LambdaF, ApplyF, GridF, TupleF, OperatorF, IdentF, ImmF ]
-- instance Data RExpr where
--   gfoldl (*) z = go
--     where
--       go (Let b x) = z Let * b * x
--       go (Lambda l r) = z Lambda * l * r
--       go (Apply f x) = z Apply * f * x
--       go (Grid n x) = z Grid * n * x
--       go (Tuple xs) = z Tuple * xs
--       go

data SpecialDeclaration = DimensionDeclaration Int
                        | AxesDeclaration [IdentName]
                        | OtherDeclaration String [Integer]
             deriving (Eq, Ord, Show, Data)

data Program = Program
               { _programSpecialDeclarations :: [SpecialDeclaration]
               , _programBinding :: BindingF RExpr}
             deriving (Eq, Ord, Show, Data)
makeLenses ''Program

instance MeetSemiLattice TypeExpr where
  (/\) = semiLatticeOfTypeExpr

semiLatticeOfTypeExpr :: TypeExpr -> TypeExpr -> TypeExpr
semiLatticeOfTypeExpr a b = case go a b of
  TopType -> go b a
  c       -> c
  where
    go :: TypeExpr -> TypeExpr -> TypeExpr
    go a b | a == b = a
    go a@(ElemType _) b@(GridType v c) = let d = a/\c in if d==TopType then TopType else GridType v d
    go (GridType v1 c1) (GridType v2 c2) = if v1 == v2 then GridType v1 (c1 /\ c2) else TopType
    go _ _          = TopType

class Typed a where
  typeExprOf :: a -> TypeExpr
