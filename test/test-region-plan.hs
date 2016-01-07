{-# LANGUAGE TemplateHaskell #-}

import Control.Lens
import qualified Data.Map as M
import Data.SBV
import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.QuickCheck2 (testProperty)
import Test.Framework.Providers.HUnit (testCase)
import Test.Framework.Providers.API (Test)
import Test.QuickCheck hiding ((==>))
import Test.HUnit.Lang


import Formura.Vec


main :: IO ()
main = defaultMain tests

tests = [
        testGroup "Test of the Plan A" [
                testProof "sample halo matches the hand-written halo" $
                (\ t x y z -> let p = Vec[t,x,y,z] in halo myRegion p <=> itsHalo p)
           ]
      ]

testProof :: Provable a => String -> a -> Test
testProof msg thm = testCase msg $ do
  result <- prove thm
  if (not $ modelExists result)
    then return()
    else assertFailure $ show result

testDisproof :: Provable a => String -> a -> Test
testDisproof msg thm = testCase msg $ do
  result <- prove thm
  if (not $ modelExists result)
    then assertFailure $ show result
    else return ()




dimension = 3
nS = 1
type SInt = SInt32

type Pt = Vec SInt

type RegionID = Vec Int
type Region = Pt -> SBool
type FacetID = (Char, Vec Int)
type Facet  = Region

data Strategy = Strategy
  { regions :: M.Map RegionID Region
  , facets  :: M.Map FacetID  Facet
  , regionOrder :: M.Map RegionID Int
  , nextR :: FacetID -> RegionID
  , prevR :: FacetID -> RegionID
  , nextFs :: RegionID -> [FacetID]
  , prevFs :: RegionID -> [FacetID]
                }

sFeet :: [Pt]
sFeet = map (fmap fromInteger) feet

feet :: [Vec Integer]
feet = map ((Vec $ 1 : replicate dimension 0) + ) $
  (Vec $ replicate (dimension+1) 0) : concat [[v, negate v] | v <- spatialVecs]

spatialVecs :: [Vec Integer]
spatialVecs =
  [Vec $ replicate (dimension+1) 0 & ix i .~ 1 | i <- [1..dimension]]


halo :: Region -> Region
halo r x = foldr1 (|||) [r $ x + v| v <- sFeet]

range :: SInt -> (SInt, SInt) -> SBool
range x (a,b)= a .<= x &&& x .< b

myRegion :: Region
myRegion (Vec [t,x,y,z]) = t `range` (0,100) &&& x `range` (0,50)

itsHalo :: Region
itsHalo (Vec [t,x,y,z]) = t `range` (-1,99) &&& x `range` (-1,51)
