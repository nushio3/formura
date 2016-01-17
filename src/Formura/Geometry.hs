{-# LANGUAGE FlexibleContexts, FlexibleInstances, FunctionalDependencies, MultiParamTypeClasses, PackageImports, TypeFamilies #-}

module Formura.Geometry where

import Control.Lens
import Control.Monad
import Control.Monad.IO.Class
import "monads-tf" Control.Monad.Reader
import Formura.GlobalEnvironment
import Formura.Vec
import Data.SBV

type SInt = SInt32
type Pt = Vec SInt

doesProve :: (Provable a, MonadGeometry m) =>  a -> m Bool
doesProve thm = do
  result <- liftIO $ prove thm
  if (not $ modelExists result)
    then return True
    else return False



class (HasGlobalEnvironment (EnvType m), MonadReader m, MonadIO m) => MonadGeometry m

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

-- TODO: newtype this range.
instance Num (Int, Int) where
  fromInteger n = (fromInteger n,fromInteger n)

instance HasPredicate Orthotope where
  toPredicate vRange vx = case liftVec2 range vRange vx of
    PureVec b -> b
    Vec bs -> bAnd bs

class HasCompound a where
  toCompound :: MonadGeometry m => a -> m Compound

instance HasCompound Compound where
  toCompound = return

instance HasCompound Body where
  toCompound (Body p0) = do
    iNames <- view axesNames
    let loNames = map ("lo_" ++) iNames
        hiNames = map ("hi_" ++) iNames
        problem0 :: Symbolic SBool
        problem0 = do
          loVars <- mapM exists loNames
          hiVars <- mapM exists hiNames
          ptVars <- mapM forall iNames
          sequence_ [constrain $ (l .<= i &&& i .< (h::SInt)) | (l,h,i)<-zip3 loVars hiVars ptVars]
          return true
    return $ Compound []
