{-|
Module      : Language.Combinator
Description : language combinator
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

Combinators for creating a customized language based on Modular Reifiable Matching.
-}

{-# LANGUAGE ConstraintKinds, DataKinds, DeriveFoldable, DeriveFunctor,
DeriveTraversable, FlexibleContexts, FlexibleInstances,
FunctionalDependencies, GADTs, KindSignatures, MultiParamTypeClasses,
PatternSynonyms, RankNTypes, ScopedTypeVariables, StandaloneDeriving,
TemplateHaskell, TupleSections, TypeFamilies, TypeOperators,
UndecidableInstances, ViewPatterns #-}

module Formura.Language.Combinator where

import           Control.Lens
import           Control.Monad
import           Data.Traversable
import qualified Test.QuickCheck     as Q
import qualified Text.Trifecta       as P hiding (string)
import qualified Text.Trifecta.Delta as P

-- * Sum of functors

-- | The datatype for the sum of functors.
data Sum (fs :: [* -> *]) x where
  Void :: Sum '[] x
  Here :: Traversable f => f x -> Sum (f ': fs) x
  There :: Sum fs x -> Sum (f ': fs) x

instance Eq (Sum '[] x) where
  _ == _ = True
instance (Eq (f x), Eq (Sum fs x)) => Eq (Sum (f ': fs) x) where
   (Here a)   == (Here b)  = a == b
   (Here _ )  == (There _) = False
   (There _ ) == (Here _)  = False
   (There a)  == (There b) = a == b

instance Ord (Sum '[] x) where
  compare Void Void = EQ
instance (Ord (f x), Ord (Sum fs x)) => Ord (Sum (f ': fs) x) where
  compare (Here a) (Here b) = compare a b
  compare (Here _ ) (There _) = LT
  compare (There _ ) (Here _) = GT
  compare (There a) (There b) = compare a b


instance Show x => Show (Sum '[] x) where
  show Void = "∅"

instance (Show (f x), Show (Sum fs x)) => Show (Sum (f ': fs) x) where
  showsPrec n (Here x) = showsPrec n x
  showsPrec n (There x) = showsPrec n x

instance Functor (Sum fs) where
  fmap _ Void      = Void
  fmap f (Here t)  = Here $ fmap f t
  fmap f (There t) = There $ fmap f t

instance Foldable (Sum fs) where
  foldMap = foldMapDefault

instance Traversable (Sum fs) where
  traverse _   Void      = pure Void
  traverse afb (Here x)  = Here  <$> traverse afb x
  traverse afb (There x) = There <$> traverse afb x

instance Elem f fs => Matches f (Sum fs x) where
  type Content f (Sum fs x) = x
  match = constructor

instance Q.Arbitrary (Sum '[] x) where
  arbitrary = return Void
  shrink _ = []

instance (Traversable f, Q.Arbitrary (f x)) => Q.Arbitrary (Sum (f ': '[]) x) where
  arbitrary = Here <$> Q.arbitrary
  shrink (Here x)  = map Here  $ Q.shrink x
  shrink (There x) = map There $ Q.shrink x

instance (Traversable f, Q.Arbitrary (f x), Q.Arbitrary (Sum (g ': fs) x)) => Q.Arbitrary (Sum (f ': g ': fs) x) where
  arbitrary = Q.oneof [Here <$> Q.arbitrary, There <$> Q.arbitrary]
  shrink (Here x)  = map Here  $ Q.shrink x
  shrink (There x) = map There $ Q.shrink x



-- | The prisms for accessing the first functor in the Sum
_Here :: Traversable f => Prism' (Sum (f ': fs) x) (f x)
_Here = let a :: Sum (f ': fs) x -> Maybe (f x)
            a (Here x) = Just x
            a _        = Nothing
    in prism' Here a

-- | The prisms for accessing the rest of functors in the Sum
_There :: Traversable f => Prism' (Sum (f ': fs) x) (Sum fs x)
_There = let a :: Sum (f ': fs) x -> Maybe (Sum fs x)
             a (There x) = Just x
             a _         = Nothing
    in prism' There a



-- | The constraint that functor f is an element of 'Sum' fs
class Elem f fs where
  constructor :: Prism' (Sum fs x) (f x)

-- | Unicode type synonym for 'Elem'
type f ∈ fs = Elem f fs

instance {-# OVERLAPPING #-} Traversable f => Elem f (f ': fs) where
  constructor = _Here
instance {-# OVERLAPPABLE #-} (Traversable f, Traversable g, Elem f fs) => Elem f (g ': fs) where
  constructor = _There . constructor

-- | The constraint that set of functors @fs@ is a subset of @gs@
class Subset fs gs where
  subrep :: Prism' (Sum gs x) (Sum fs x)

-- | Unicode type synonym for 'Subset'
type fs ⊆ gs = Subset fs gs

instance {-# OVERLAPPING #-} Subset '[] '[] where
  subrep = simple

instance {-# OVERLAPPING #-} Subset '[] fs => Subset '[] (f ': fs) where
  subrep = prism' There (const Nothing) . subrep

instance {-# OVERLAPPABLE #-} (Traversable f, Elem f gs, Subset fs gs) => Subset (f ': fs) gs where
  subrep = let fwd :: Sum (f ': fs) x -> Sum gs x
               fwd (Here x)  = review constructor x
               fwd (There x) = review subrep x

               bwd :: Sum gs x -> Maybe (Sum (f ': fs) x)
               bwd ((^? constructor ) -> Just x) = Just (Here x)
               bwd ((^? subrep) -> Just x) = Just (There x)
               bwd _                     = Nothing
           in prism' fwd bwd


-- * Tools for matching

-- | The constraint that object @x@ can somehow be matched to functor @f@, that is, there is a 'Prism'' from type @x@
--   to type @f (Content f x)@.
class Matches f x where
  type Content f x :: *
  match :: Prism' x (f (Content f x))

-- | The type of the  'Prism'' that matches any @x@ such that @Matches f x@.
type MatchPrism (f :: * -> *) = forall x. Matches f x => Prism' x (f (Content f x))


instance Matches f (f x) where
  type Content f (f x) = x
  match = simple

-- * Syntax tree

-- | The compiler metadata.
data Metadata = Metadata {_metadataRendering :: P.Rendering, _metadataBegin :: P.Delta,  _metadataEnd :: P.Delta}
makeLenses ''Metadata

instance Show Metadata where
  show = const ""
instance P.HasRendering Metadata where
  rendering = metadataRendering

-- | The fix point of F-algebra, with compiler metadata information. This is the datatype we use to represent any AST.
data Fix f where
  In :: Functor f => {_metadata :: Maybe Metadata, _out :: f (Fix f)} -> Fix f

instance (Eq (f (Fix f))) => Eq (Fix f) where
  (In _ a) == (In _ b) = a == b
instance (Ord (f (Fix f))) => Ord (Fix f) where
  compare (In _ a) (In _ b) = compare a b

instance (Show (f (Fix f))) => Show (Fix f) where
    showsPrec n (In _ x) = showsPrec n x

instance Elem f fs => Matches f (Fix (Sum fs)) where
  type Content f (Fix (Sum fs)) = Fix (Sum fs)
  match = fix . constructor

instance (Functor f, Q.Arbitrary (f (Fix f))) => Q.Arbitrary (Fix f) where
  arbitrary       = In Nothing <$> Q.arbitrary
  shrink (In h x) = map (In h) $ Q.shrink x


-- | The lens that accesses the compiler metadata of the syntax tree
metadata :: Functor f => Lens' (Fix f) (Maybe Metadata)
metadata fun (In p o) = fmap (\p' -> In p' o) (fun p)

-- | The lens to convert to/from 'Fix' and its content.

fix :: forall f. Functor f => Iso' (Fix f) (f (Fix f))
fix = iso _out go
  where
    go :: f (Fix f) -> Fix f
    go ffixf = In Nothing ffixf


-- * Syntax tree utility



-- | Languages are 'Fix' over 'Sum' of functors
type Lang (fs :: [ * -> * ]) = Fix (Sum fs)


-- | An F-algebra.
type Algebra f a = f a -> a

-- | A monadic F-algebra.
type AlgebraM m f a = f a -> m a

-- | A precursor for an 'Algebra' .
type Algebrogen f a b = f a -> b


-- | The catamorphism that is specialized to 'Lang' . It copies the metadata from @Lang f@ to @Lang g@.

fold :: Algebra f (Lang g) -> Fix f -> (Lang g)
fold k (In meta x) = propagateMetadata meta $ k $ fmap (fold k) x

-- | Monadic 'fold' .

mfold :: (Monad m, Traversable f) => AlgebraM m f (Lang g) -> Fix f -> m (Lang g)
mfold k (In meta x) = do
  r1 <- traverse (mfold k) x
  r2 <- k r1
  return $ propagateMetadata meta r2

-- | Propagate Metadata from the top of the syntax tree, in case the algebra had added more than one constructors.

propagateMetadata :: Maybe Metadata -> Lang f -> Lang f
propagateMetadata Nothing x = x
propagateMetadata (Just meta) x = go x
  where
    go (In Nothing y) = In (Just meta) $ fmap go y
    go y = y


-- | Lift an 'Algebrogen' to monad.

mlift :: (Monad m, Traversable fs) => Algebrogen fs a b -> Algebrogen fs (m a) (m b)
mlift fsa2b fsma = liftM fsa2b $ sequence fsma

-- | A generic catamorphism, where the compiler metadata is lost.

foldout :: Algebra f a -> Fix f -> a
foldout k (In _ x) = k $ fmap (foldout k) x

-- | Monadic 'foldout' .

mfoldout :: Monad m => (Sum fs a -> m a) -> Lang fs -> m a
mfoldout k x = foldout (join . mlift k) x

-- | Promote a @Lang fs@ to @Lang gs@, when @gs@ has more constructors than @fs@.

subFix :: (fs ⊆ gs) => Lang fs -> Lang gs
subFix = fold (review (fix . subrep))

-- | Restrict a function from @Lang gs@ to that from @Lang fs@, where @fs@ has less constructors than @gs@.

subOp :: (fs ⊆ gs) => (Lang gs -> c) -> Lang fs -> c
subOp g = g . subFix

-- | An algebra that just copies what found in @Lang fs@ to @Lang gs@.

transAlg :: (fs ⊆ gs) => Algebra (Sum fs) (Lang gs)
transAlg = review (fix . subrep)

-- | A monadic 'transAlg' .

mTransAlg :: (Monad m, fs ⊆ gs) => AlgebraM m (Sum fs) (Lang gs)
mTransAlg = return . transAlg

-- | Cons an algebra to a 'Sum' of an algebra, to create a larger algebra.

(+::) :: Algebrogen f a b -> Algebrogen (Sum fs) a b -> Algebrogen (Sum (f ': fs)) a b
af +:: afs = affs
  where
    affs (Here x)  = af  x
    affs (There x) = afs x

-- | Override a specific algebra @f@ in an algebra over @fs@.

(>::) :: Elem f fs => Algebra f a -> Algebra (Sum fs) a -> Algebra (Sum fs) a
af >:: afs= affs
  where
    affs ((^? constructor) -> Just fa) = af  fa
    affs x                             = afs x


infixr 5 +::, >::
