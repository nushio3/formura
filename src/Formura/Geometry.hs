{- |
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

Module for geometry inference.
-}

{-# LANGUAGE ConstraintKinds, LambdaCase, FlexibleContexts, FlexibleInstances, FunctionalDependencies, MultiParamTypeClasses, PackageImports, ScopedTypeVariables, TypeFamilies #-}

module Formura.Geometry where

import Control.Lens
import Control.Monad
import Control.Monad.IO.Class
import Control.Monad.Reader
import Data.List (lookup)
import Formura.GlobalEnvironment
import Formura.Vec
import Data.SBV
import Data.SBV.Internals (SMTModel(..), CW(..), CWVal(..))
import Numeric.Search

-- | Symbolic Integer
type SInt = SInteger
-- | Numerical Integer
type NInt = Integer
type Pt = Vec SInt

doesProve :: (Provable a, MonadGeometry r m) =>  a -> m Bool
doesProve thm = do
  result <- liftIO $ prove thm
  if (not $ modelExists result)
    then return True
    else return False


type MonadGeometry r m = (HasGlobalEnvironment r, MonadReader r m, MonadIO m)

-- * range combinators

withinRange :: NInt -> NInt -> (SInt -> SBool)
withinRange lo hi x = lo' .<= x &&& x .< hi'
  where
    lo' = fromIntegral lo
    hi' = fromIntegral hi

sInRange :: SInt -> SInt -> (SInt -> SBool)
sInRange lo hi x = lo .<= x &&& x .< hi

-- * Body

-- | A body is a finite subset of vector space, defined by a predicate
newtype Body = Body (Pt -> SBool)

class HasPredicate a where
  toPredicate :: a -> (Pt -> SBool)

instance HasPredicate Body where
  toPredicate (Body p) = p

instance HasPredicate Orthotope where
  toPredicate (los,his) vx = case withinRange <$> los <*> his <*> vx of
    PureVec b -> b
    Vec bs -> bAnd bs

-- * Compound

-- | An orthotope is a rectangular region of n-dimensional space.
type Orthotope = (Vec NInt, Vec NInt)

-- | A 'Compound' is a finite set of mutually-exclusive orthotopes.
newtype Compound = Compound [Orthotope]

volume :: Compound -> NInt
volume (Compound os) = sum $ map vol os
  where
    vol :: Orthotope -> NInt
    vol (los, his) = let Vec sizes = (-) <$> his <*> los in product sizes

class HasCompound a where
  toCompound :: MonadGeometry r m => a -> m Compound

instance HasCompound Compound where
  toCompound = return

instance HasCompound Body where
  toCompound = bodyToCompound

bodyToCompound :: forall r m. MonadGeometry r m => Body -> m Compound
bodyToCompound (Body pred0) = do
  satAny >>= \case
    False -> return $ Compound []
    True -> do
      Just o <- evidenceForLargest <$>
                searchM positiveExponential divForever satBoxOfSize
      Compound os <- bodyToCompound (Body (\v -> pred0 v &&& bnot (toPredicate o v)))
      return $ Compound (o:os)
  where

    satAny :: m Bool
    satAny = do
      iNames <- view axesNames
      SatResult smtResult0 <- liftIO $ sat $ do
        iVars <- mapM exists iNames
        return $ pred0 (Vec iVars)
      case smtResult0 of
        Satisfiable _ _ -> return True
        _ -> return False



    satBoxOfSize :: NInt -> m (Evidence () Orthotope)
    satBoxOfSize ookisa0 = do
      iNames <- view axesNames
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
