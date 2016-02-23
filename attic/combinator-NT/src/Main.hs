{-# LANGUAGE ConstraintKinds, DataKinds, DeriveFoldable, DeriveFunctor,
DeriveTraversable, FlexibleContexts, FlexibleInstances,
FunctionalDependencies, GADTs, KindSignatures, MultiParamTypeClasses,
PatternSynonyms, RankNTypes, ScopedTypeVariables, StandaloneDeriving,
TemplateHaskell, TupleSections, TypeFamilies, TypeOperators,
UndecidableInstances, ViewPatterns #-}


module Main where

import           Control.Lens
import           Control.Monad
import           Data.Traversable
import qualified Test.QuickCheck     as Q
import qualified Text.Trifecta       as P hiding (string)
import qualified Text.Trifecta.Delta as P


-- | Apply some additional information to a functor.
data Ann b f a = Ann b (f a)

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
  In :: Functor f => {_out :: f (Fix f)} -> Fix f

instance (Eq (f (Fix f))) => Eq (Fix f) where
  (In a) == (In b) = a == b
instance (Ord (f (Fix f))) => Ord (Fix f) where
  compare (In a) (In b) = compare a b

instance (Show (f (Fix f))) => Show (Fix f) where
  showsPrec n (In x) = showsPrec n x

instance (f ∈ fs) => Matches f (Fix (Sum fs)) where
  type Content f (Fix (Sum fs)) = Fix (Sum fs)
  match = fix . constructor

instance (Functor f, Q.Arbitrary (f (Fix f))) => Q.Arbitrary (Fix f) where
  arbitrary       = In <$> Q.arbitrary
  shrink (In x) = map In  $ Q.shrink x

fix :: forall f. Functor f => Iso' (Fix f) (f (Fix f))
fix = iso _out go
  where
    go :: f (Fix f) -> Fix f
    go ffixf = In ffixf


-- * A Sample language

data ImmF x = ImmF Rational
instance Show (ImmF x) where
  show (ImmF n) = show n





main :: IO ()
main = do
  putStrLn "hello world"
