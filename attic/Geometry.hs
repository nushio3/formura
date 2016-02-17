{- |
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

Module for geometry inference.
-}

{-# LANGUAGE ConstraintKinds, DeriveFunctor, LambdaCase, FlexibleContexts, FlexibleInstances, FunctionalDependencies, ImplicitParams, MultiParamTypeClasses, PackageImports, ScopedTypeVariables, TypeFamilies #-}

module Formura.Geometry where

import Control.Lens
import Control.Monad
import Control.Monad.IO.Class
import Control.Monad.Reader
import qualified Data.Map as M
import Data.List (lookup, foldl')
import Data.Monoid
import Formura.GlobalEnvironment
import Formura.Vec
import Data.SBV
import Data.SBV.Internals (SMTModel(..), CW(..), CWVal(..))
import Numeric.Search
import System.IO.Unsafe

-- | Symbolic Integer
type SInt = SInteger
-- | Numerical Integer
type NInt = Integer
-- | Symbolic point
type SPt = Vec SInt
-- | Numerical point
type Pt = Vec NInt

doesProve :: Provable a =>  a -> Bool
doesProve thm = unsafePerformIO $ do
  result <- prove thm
  if (not $ modelExists result)
    then return True
    else return False

doesSat :: (Provable a) =>  a -> Bool
doesSat thm = unsafePerformIO $ do
  result <- sat thm
  if (modelExists result)
    then return True
    else return False

-- * range combinators

withinRange :: NInt -> NInt -> (SInt -> SBool)
withinRange lo hi x = lo' .<= x &&& x .< hi'
  where
    lo' = fromIntegral lo
    hi' = fromIntegral hi

sInRange :: SInt -> SInt -> (SInt -> SBool)
sInRange lo hi x = lo .<= x &&& x .< hi

-- * Geometry class

type ImplicitGlobalEnvironment = ?globalEnvironment :: GlobalEnvironment

-- | An object that accepts geometric operations.

class Geometric a where
  move :: Pt -> a -> a
  empty :: a
  isEmpty :: a -> Bool
  volume :: a -> NInt



instance Geometric Orthotope where
  move dx (x,y) = (x+dx, y+dx)
  empty = (0,0)
  isEmpty = (<=0) . volume
  volume (los, his) = let Vec sizes = (\hi lo -> max 0 (hi-lo)) <$> his <*> los
                      in product sizes

instance Geometric Compound where
  move dx (Compound xs) = Compound (map (move dx) xs)
  empty = Compound []
  isEmpty = (<=0) . volume
  volume (Compound os) = sum $ map volume os


-- * Body

-- | A body is a finite subset of vector space, defined by a predicate
newtype Body = Body (SPt -> SBool)

instance Boolean Body where
  true  = Body $ const true
  false = Body $ const false
  bnot (Body p) = Body (bnot . p)
  (Body p1) &&& (Body p2) = Body (\x -> p1 x &&& p2 x)
  (Body p1) ||| (Body p2) = Body (\x -> p1 x ||| p2 x)

class HasPredicate a where
  toPredicate :: a -> (SPt -> SBool)
  toBody :: a -> Body
  toBody = Body . toPredicate

instance HasPredicate Body where
  toPredicate (Body p) = p

instance HasPredicate Orthotope where
  toPredicate (los,his) vx = case withinRange <$> los <*> his <*> vx of
    PureVec b -> b
    Vec bs -> bAnd bs

instance HasPredicate Compound where
  toPredicate (Compound os) = \x -> bOr $ [p x | p <- map toPredicate os]

-- * Compound

-- | An orthotope is a rectangular region of n-dimensional space.
type Orthotope = (Vec NInt, Vec NInt)

-- | A 'Compound' is a finite set of mutually-exclusive orthotopes.
newtype Compound = Compound [Orthotope]
                 deriving (Eq, Ord, Show, Read)


class HasCompound a where
  toCompound :: ImplicitGlobalEnvironment => a -> Compound

instance HasCompound Compound where
  toCompound = id

instance HasCompound Body where
  toCompound b = unsafePerformIO $ bodyToCompound b

bodyToCompound :: ImplicitGlobalEnvironment => Body -> IO Compound
bodyToCompound (Body pred0) = do
  satAny >>= \case
    False -> return $ Compound []
    True -> do
      Just o <- evidenceForLargest <$>
                searchM positiveExponential divForever satBoxOfSize
      Compound os <- bodyToCompound (Body (\v -> pred0 v &&& bnot (toPredicate o v)))
      return $ Compound (o:os)
  where
    iNames = ?globalEnvironment ^. axesNames

    satAny :: IO Bool
    satAny = do

      SatResult smtResult0 <- liftIO $ sat $ do
        iVars <- mapM exists iNames
        return $ pred0 (Vec iVars)
      case smtResult0 of
        Satisfiable _ _ -> return True
        _ -> return False



    satBoxOfSize :: NInt -> IO (Evidence () Orthotope)
    satBoxOfSize ookisa0 = do
      let loNames = map ("lo_" ++) iNames
          hiNames = map ("hi_" ++) iNames
          problem0 :: Symbolic SBool
          problem0 = do
            loVars <- mapM exists loNames
            hiVars <- mapM exists hiNames
            sequence_ [constrain $ lo  .< hi | (lo,hi) <- zip loVars hiVars]
            let ookisa = foldr1 smin [ hi - lo | (lo,hi) <- zip loVars hiVars]
                         + sum [ hi - lo | (lo,hi) <- zip loVars hiVars]
            constrain $ ookisa .>= fromIntegral ookisa0
            ptVars <- mapM forall iNames
            let withinRanges = bAnd [sInRange l h i | (l,h,i)<-zip3 loVars hiVars ptVars]
            return $ withinRanges ==> pred0 (Vec ptVars)
      SatResult smtResult0 <- liftIO $ sat $ problem0
      case smtResult0 of
        Satisfiable _ (SMTModel assoc0)-> do
          let
            lookupNames :: [String] -> [NInt]
            lookupNames ns = [ fromInteger val
                             | n <- ns,
                               Just (CW _ (CWInteger val)) <- [lookup n assoc0]
                             ]
            los = lookupNames loNames
            his = lookupNames hiNames
          return $ Evidence $ (Vec los, Vec his)
        _ -> return $ CounterEvidence ()

-- * Canvas
type Paint  a = (a, Compound)

instance Monoid a => Geometric (Paint a) where
  move dx (c,cp) = (c, move dx cp)
  empty = (mempty, empty)
  isEmpty (_, cp) = isEmpty cp
  volume (_, cp) = volume cp

data Canvas a = Canvas (M.Map a Compound)
              deriving (Eq, Ord, Show)

zipCanvas :: forall a.
             (ImplicitGlobalEnvironment, Ord a, Monoid a) =>
             Canvas a -> Canvas a -> Canvas a
zipCanvas (Canvas xm0) (Canvas ym0) =
  Canvas $ M.unionsWith (\(Compound x) (Compound y) -> Compound (x ++ y)) $
  map (uncurry M.singleton) $
  foldr (\x y -> go x y []) (M.toList ym0) (M.toList xm0)
  where
    go :: Paint a -> [Paint a] -> [Paint a] -> [Paint a]
    go x [] dones = x:dones
    go x todos@(y:ys) dones
      | isEmpty x = todos ++ dones
      | otherwise =
          let
            (cx, cpx) = x; px = toBody cpx
            (cy, cpy) = y; py = toBody cpy
            cpXandY    = toCompound $ px &&& py
            cpXandnotY = toCompound $ px &&& bnot py
            cpnotXandY = toCompound $ bnot px &&& py
            ypart
              | isEmpty cpnotXandY = []
              | otherwise = [(cy, cpnotXandY) ]
          in go (cx, cpXandnotY) ys ((cx <> cy, cpXandY) : (ypart ++ dones))
