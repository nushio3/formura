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

move :: Pt -> Region -> Region
move v r x = r (x - v)

monitorOffset :: Pt
monitorOffset = Vec[4,0,0,0]


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

orthotope :: [(SInt, SInt)] -> Region
orthotope bounds (Vec xs) = bAnd $ zipWith range xs bounds

sameset :: Region -> Region -> Symbolic SBool
sameset a b = do
  t <- forall "t"
  x <- forall "x"
  y <- forall "y"
  z <- forall "z"
  let p = Vec [t,x,y,z]
  return $ a p <=> b p


data Plan = Plan
  { _regions :: M.Map RegionID Region
  , _facets  :: M.Map FacetID  Facet
  , _regionOrder :: M.Map RegionID Int
  , _nextR :: FacetID -> RegionID
  , _prevR :: FacetID -> RegionID
  , _nextFs :: RegionID -> [FacetID]
  , _prevFs :: RegionID -> [FacetID]
  , _initialFs :: [Facet]
  , _finalFs :: [Facet]
  }


makeLenses ''Plan

thePlan = Plan{}
          & initialFs .~ [orthotope[(0,1),(0,48),(0,48),(0,48)],
                          orthotope[(0,1),(0,48),(0,48),(0,48)] ]
          & finalFs .~   [orthotope[(4,5),(0,48),(0,48),(0,48)],
                          orthotope[(4,5),(0,48),(0,48),(0,48)]]





myRegion :: Region
myRegion (Vec [t,x,y,z]) = t `range` (0,100) &&& x `range` (0,50)

myRegion4 :: Region
myRegion4 (Vec [t,x,y,z]) = t `range` (4,104) &&& x `range` (0,50)

itsHalo :: Region
itsHalo (Vec [t,x,y,z]) = t `range` (-1,99) &&& x `range` (-1,51)



tests = [ testGroup " The Plan "
  [ testProperty "has same numbers of initial and final facets" $
    length (thePlan ^. initialFs) == length (thePlan ^. finalFs)
  ,
    testProof "sample halo matches the hand-written halo" $
    (\ t x y z -> let p = Vec[t,x,y,z] in halo myRegion p <=> itsHalo p)
  ,
    let
        t :: Int -> Facet -> Facet -> Test
        t i fi ff  = testProof ("true for facet #" ++ show i) $ move monitorOffset fi `sameset` ff in
    testGroup "The final facets are exactly the initial facets moved by the monitoring offset" $
    zipWith3 t [0..] (thePlan ^. initialFs) (thePlan ^. finalFs)
  ]]

main :: IO ()
main = defaultMain tests
