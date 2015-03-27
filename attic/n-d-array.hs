{-# LANGUAGE DeriveFunctor, DeriveFoldable, DeriveTraversable, FlexibleInstances, GADTs, TypeOperators #-}

import Control.Applicative
import Data.Foldable
import Data.Traversable
import Data.Array.Repa as R
import Data.Array.Repa.Repr.Unboxed as R

data UnishapeG sh where
  Sh0 :: sh -> UnishapeG sh
  Sh1 :: UnishapeG (sh:.Int) -> UnishapeG sh
  deriving (Show)


type Unishape = UnishapeG Z

cons :: Int -> UnishapeG sh  -> UnishapeG sh
cons x (Sh0 y) = Sh1 (Sh0 (y:.x))
cons x (Sh1 xs) = Sh1 (cons x xs)

-- foldru :: (Int -> b -> b) -> b -> UnishapeG sh -> b
-- foldru c n (Sh0 Z) = n
-- foldru c n (Sh1 xs) = (foldru c n xs)

up :: [Int] -> Unishape
up [] = Sh0 Z
up (x:xs) = cons x $ up xs

-- down :: Unishape -> [Int]
-- down (Sh0 Z) = []
-- down (Sh1 x) =


{-
data AtomG sh a where
  Sca :: R.Array D sh a -> AtomG sh a
  Vec :: AtomG (sh:.Int) a -> AtomG sh a



type Atom a = AtomG Z a

instance (Show a, Unbox a, Shape sh, Show sh) => Show (AtomG sh a) where
  show (Sca x) = show $ computeUnboxedS x
  show (Vec x) = show x



mkAtom :: [Int] -> Atom Double
mkAtom [] = Sca (fromFunction Z $ const 0)
-- mkAtom (x:xs) = Vec (fromFunction)
-}

{-
data Atom a where
  Sca :: R.Array D Z a -> Atom a
  Vec ::

mkAtom :: [Int] -> Atom Double
mkAtom = undefined


data NType a where
  Zero :: a -> NType a
  Succ :: NType [a] -> NType a
   deriving (Functor, Foldable, Traversable)


instance (Show a) => Show (NType a) where
  show (Zero x) = show x
  show (Succ x) = show x

instance (Num a) => Num (NType a) where
   (Zero x) + (Zero y) = Zero (x+y)
   (Zero x) + (Succ y) = fmap (x+) (Succ y)
   (Succ x) + (Zero y) = fmap (\x0 -> x0+y) (Succ x)




data NType f a where
  Zero :: a -> NType f a
  Succ :: NType f (f a) -> NType f a
   deriving (Functor, Foldable, Traversable)


instance (Show a) => Show (NType [] a) where
  show (Zero x) = show x
  show (Succ x) = show x

instance (Num a, Functor f, Applicative f) => Num (NType f a) where
   (Zero x) + (Zero y) = Zero (x+y)
   (Zero x) + (Succ y) = fmap (x+) (Succ y)
   (Succ x) + (Zero y) = fmap (\x0 -> x0+y) (Succ x)


data Blackhall where
  Suck :: a -> Blackhall
-}
