module Formura.Annotation where

import Control.Lens
import Control.Monad
import Data.Maybe
import Data.Dynamic
import Prelude hiding (map)
import qualified Prelude as P (map)

-- | A dynamically-typed list of annotations.
type Annotation = [Dynamic]

class Annotated a where
  annotation :: Lens' a Annotation

-- | An empty collection.
empty :: Annotation
empty = []

-- | An annotation from a single value
singleton :: Typeable a => a -> Annotation
singleton x = [toDyn x]

-- | Add an annotation to a collection.
insert :: (Typeable a) => a -> Annotation -> Annotation
insert x ys = toDyn x : ys

-- | Remove all elements of type @a@ from the collection, and
--   set @x@ as the only member of the type in the collection.
set :: (Typeable a) => a -> Annotation -> Annotation
set x ys = toDyn x : filter ((/= typeOf x) . dynTypeRep) ys

-- | set @x@ as the only member of the type in the collection,
-- only if no annotation of the same type pre-exists.
weakSet :: (Typeable a) => a -> Annotation -> Annotation
weakSet x ys
  | any ((== typeOf x) . dynTypeRep) ys = ys
  | otherwise                           = toDyn x : ys

-- | Extract all annotations of type @a@ from
-- the collection.
toList :: (Typeable a) => Annotation -> [a]
toList =  catMaybes . P.map fromDynamic

-- | Extract the first annotation of the given type,
-- if it exists.
toMaybe :: (Typeable a) => Annotation -> Maybe a
toMaybe = msum . P.map fromDynamic

-- | Map all annotations of type @a@ to type @b@,
-- while leaving the others untouched.
map :: (Typeable a, Typeable b) => (a->b) -> Annotation -> Annotation
map f = P.map (maybeApply f)

maybeApply :: (Typeable a, Typeable b) => (a->b) -> Dynamic -> Dynamic
maybeApply f x =
    case dynApply (toDyn f) x of
      Just y  -> y
      Nothing -> x
