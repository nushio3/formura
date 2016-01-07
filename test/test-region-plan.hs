{-# LANGUAGE ImplicitParams, TemplateHaskell #-}

import Control.Lens
import qualified Data.Map as M
import           Data.Maybe
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

type Body = Pt -> SBool


newtype RegionID = Region (Vec Int) deriving (Eq, Ord, Show)
data FacetID  = Facet String (Vec Int) deriving (Eq, Ord, Show)

facet :: String -> [Int] -> FacetID
facet d xs = Facet d (Vec xs)

move :: Pt -> Body -> Body
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


halo :: Body -> Body
halo r x = foldr1 (|||) [r $ x + v| v <- sFeet]

range :: SInt -> (SInt, SInt) -> SBool
range x (a,b)= a .<= x &&& x .< b

orthotope :: [(SInt, SInt)] -> Body
orthotope bounds (Vec xs) = bAnd $ zipWith range xs bounds

sameset :: Body -> Body -> Symbolic SBool
sameset a b = do
  t <- forall "t"
  x <- forall "x"
  y <- forall "y"
  z <- forall "z"
  let p = Vec [t,x,y,z]
  return $ a p <=> b p

subset :: Body -> Body -> Symbolic SBool
subset a b = do
  t <- forall "t"
  x <- forall "x"
  y <- forall "y"
  z <- forall "z"
  let p = Vec [t,x,y,z]
  return $ a p ==> b p



data Plan = Plan
  { _regions :: M.Map RegionID Body
  , _facets  :: M.Map FacetID  Body
  , _regionOrder :: M.Map RegionID Int
  , _nextR :: FacetID -> RegionID
  , _prevR :: FacetID -> RegionID
  , _nextFs :: RegionID -> [FacetID]
  , _prevFs :: RegionID -> [FacetID]
  , _initialFs :: [FacetID]
  , _finalFs :: [FacetID]
  }
makeLenses ''Plan

class HasEmbody a where
  embody :: (?plan :: Plan) => a -> Body

instance HasEmbody RegionID where
  embody r = fromMaybe (error $ "regionID not found:" ++ show r) $ M.lookup r $ ?plan ^. regions

instance HasEmbody FacetID where
  embody f = fromMaybe (error $ "facetID not found:" ++ show f) $ M.lookup f $ ?plan ^. facets



thePlan = Plan{}
          & initialFs .~ [facet "T+" [0,0,0,0]]
          & finalFs   .~ [facet "T+" [4,0,0,0]]
          & facets    .~ M.fromList
          [(facet "T+" [0,0,0,0], orthotope [(0,1),(0,48),(0,48),(0,48)]),
           (facet "T+" [4,0,0,0], orthotope [(4,5),(0,48),(0,48),(0,48)])]





myBody :: Body
myBody = orthotope [(0,100), (1,23), (4,56), (7,89)]

myBody4 :: Body
myBody4= orthotope [(4,104), (1,23), (4,56), (7,89)]

itsHalo :: Body
itsHalo = orthotope [(-1,99), (0,24), (3,57), (6,90)]



tests = let ?plan = thePlan in  [ testGroup " The Plan "
  [ testProperty "has same numbers of initial and final facets" $
    length (thePlan ^. initialFs) == length (thePlan ^. finalFs)
  ,
    testProof "sample halo matches the hand-written halo" $
    halo myBody `subset` itsHalo
  ,
    let
        t :: Int -> FacetID -> FacetID -> Test
        t i fi ff  = testProof ("true for facet #" ++ show i) $
                     move monitorOffset (embody fi) `sameset` embody ff in
    testGroup "The final facets are exactly the initial facets moved by the monitoring offset" $
    zipWith3 t [0 ..] (thePlan ^. initialFs) (thePlan ^. finalFs)
  ]]

main :: IO ()
main = defaultMain tests
