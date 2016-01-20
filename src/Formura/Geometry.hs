{- |
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

Module for geometry inference.
-}

{-# LANGUAGE ConstraintKinds, FlexibleContexts, FlexibleInstances, FunctionalDependencies, MultiParamTypeClasses, PackageImports, ScopedTypeVariables, TypeFamilies #-}

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

type Orthotope = (Vec Int, Vec Int)
newtype Compound = Compound [Orthotope]

class HasPredicate a where
  toPredicate :: a -> (Pt -> SBool)

instance HasPredicate Body where
  toPredicate (Body p) = p

range :: Int -> Int -> (SInt -> SBool)
range lo hi x = lo' .<= x &&& x .< hi'
  where
    lo' = fromIntegral lo
    hi' = fromIntegral hi

sRange :: SInt -> SInt -> (SInt -> SBool)
sRange lo hi x = lo .<= x &&& x .< hi

instance HasPredicate Orthotope where
  toPredicate (los,his) vx = case range <$> los <*> his <*> vx of
    PureVec b -> b
    Vec bs -> bAnd bs

class HasCompound a where
  toCompound :: MonadGeometry r m => a -> m Compound

instance HasCompound Compound where
  toCompound = return

instance HasCompound Body where
  toCompound = bodyToCompound

bodyToCompound :: forall r m. MonadGeometry r m => Body -> m Compound
bodyToCompound (Body pred0) = do
  b <- satAny
  case satAny of
    False -> return $ Compound []
    True -> do
      Evidence o <- smallest evidence <$>
                    searchM (0,replicate (*2) 1) splitForever satBoxOfSize
      return $ Compound o
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



    satBoxOfSize :: Int -> m (Evidence () Orthotope)
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
            let inRanges = bAnd [sRange l h i | (l,h,i)<-zip3 loVars hiVars ptVars]
            return $ inRanges ==> pred0 (Vec ptVars)
      SatResult smtResult0 <- liftIO $ sat $ problem0
      case smtResult0 of
        Satisfiable _ (SMTModel assoc0)-> do
          let
            lookupNames :: [String] -> [Int]
            lookupNames ns = [ fromInteger val
                             | n <- ns,
                               Just (CW _ (CWInteger val)) <- [lookup n assoc0]
                             ]
            los = lookupNames loNames
            his = lookupNames hiNames
          return $ Evidence $ (Vec los, Vec his)
        _ -> return $ CounterEvidence ()
