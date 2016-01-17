{- |
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

Module for geometry inference.
-}

{-# LANGUAGE ConstraintKinds, FlexibleContexts, FlexibleInstances, FunctionalDependencies, MultiParamTypeClasses, PackageImports, TypeFamilies #-}

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

type SInt = SInteger
type Pt = Vec SInt

doesProve :: (Provable a, MonadGeometry r m) =>  a -> m Bool
doesProve thm = do
  result <- liftIO $ prove thm
  if (not $ modelExists result)
    then return True
    else return False


type MonadGeometry r m = (HasGlobalEnvironment r, MonadReader r m, MonadIO m)


newtype Body = Body (Pt -> SBool)

type Orthotope = Vec (Int,Int)
newtype Compound = Compound [Orthotope]

class HasPredicate a where
  toPredicate :: a -> (Pt -> SBool)

instance HasPredicate Body where
  toPredicate (Body p) = p

range :: (Int, Int) -> (SInt -> SBool)
range (lo,hi) x = lo' .<= x &&& x .< hi'
  where
    lo' = fromIntegral lo
    hi' = fromIntegral hi

sRange :: (SInt, SInt) -> (SInt -> SBool)
sRange (lo,hi) x = lo .<= x &&& x .< hi

-- TODO: newtype this range.
instance Num (Int, Int) where
  fromInteger n = (fromInteger n,fromInteger n)

instance HasPredicate Orthotope where
  toPredicate vRange vx = case liftVec2 range vRange vx of
    PureVec b -> b
    Vec bs -> bAnd bs

class HasCompound a where
  toCompound :: MonadGeometry r m => a -> m Compound

instance HasCompound Compound where
  toCompound = return

instance HasCompound Body where
  toCompound = bodyToCompound

bodyToCompound :: MonadGeometry r m => Body -> m Compound
bodyToCompound (Body pred0) = do
  iNames <- view axesNames
  let loNames = map ("lo_" ++) iNames
      hiNames = map ("hi_" ++) iNames
      problem0 :: (Pt -> SBool) -> Symbolic SBool
      problem0 pred1 = do
        loVars <- mapM exists loNames
        hiVars <- mapM exists hiNames
        let largeness = 3
        sequence_ [constrain $ lo + largeness .<= hi | (lo,hi) <- zip loVars hiVars]
        ptVars <- mapM forall iNames
        let inRanges = bAnd [sRange (l,h) i | (l,h,i)<-zip3 loVars hiVars ptVars]
        return $ inRanges ==> pred1 (Vec ptVars)
  SatResult smtResult0 <- liftIO $ sat $ problem0 pred0
  case smtResult0 of
    Satisfiable _ (SMTModel assoc0)-> do
      forM_ (loNames ++ hiNames) $ \ n1 -> do
        case (lookup n1 assoc0) of
          Just (CW _ (CWInteger val1)) -> do
            liftIO $ print (n1, val1)
    _ -> error "unsatisfiable."
  return $ Compound []
