{-# LANGUAGE TemplateHaskell #-}

import Control.Lens
import qualified Data.Map as M
import Data.SBV

import Formura.Vec

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

main :: IO ()
main = do
  ret <- prove $ \ t x y z ->
                  let p = Vec [t,x,y,z] in
                   halo myRegion p <=> itsHalo p
  print ret
  let p0 = Vec [98,0,0,0]
  print $ naiveHalo myRegion p0
  print $ myRegion $ p0 + Vec [1,0,0,0]
  print $ itsHalo  p0
