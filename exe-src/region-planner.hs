import Control.Lens
import Data.SBV

import Formura.Vec

dimension = 3
nS = 1

type Pt = Vec SInt32

type Region = Pt -> SBool

sFeet :: [Pt]
sFeet = map (fmap fromInteger) feet

feet :: [Vec Integer]
feet = map ((Vec $ 1 : replicate dimension 0) + ) $
  (Vec $ replicate (dimension+1) 0) : concat [[v, negate v] | v <- spatialVecs]

spatialVecs :: [Vec Integer]
spatialVecs =
  [Vec $ replicate (dimension+1) 0 & ix i .~ 1 | i <- [1..dimension]]


naiveHalo :: Region -> Region
naiveHalo r x = foldr1 (|||) [r $ x + v| v <- sFeet]


myRegion :: Region
myRegion (Vec [t,x,y,z]) = 0 .<= t &&& t .< 100 &&& 0 .<= x &&& x .< 50

itsHalo :: Region
itsHalo (Vec [t,x,y,z]) = -1 .<= t &&& t .< 99 &&& -1 .<= x &&& x .< 51

main :: IO ()
main = do
  ret <- prove $ \ t x y z ->
                  let p = Vec [t,x,y,z] in
                   naiveHalo myRegion p <=> itsHalo p
  print ret
  let p0 = Vec [99,0,0,0]
  print $ naiveHalo myRegion p0
  print $ myRegion $ p0 + Vec [1,0,0,0]
  print $ itsHalo  p0
