{-# LANGUAGE ImplicitParams, TemplateHaskell #-}

module Main where

import Algebra.Lattice.Levitated
import Control.Monad.Reader
import Data.Monoid

import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.QuickCheck2 (testProperty)
import Test.Framework.Providers.HUnit (testCase)
import Test.Framework.Providers.API (Test)
import Test.QuickCheck hiding ((==>))
import Test.HUnit.Base hiding (Test)

import Formura.Geometry
import Formura.Vec



tests :: [Test]
tests =
  [ testCase "Basic arithmetic holds." $ 2 @=? 1+1
  , testCase "Monoid of Partition is intersection." $
    Box (Vec [1]) (Vec [10]) <> Box (Vec [2]) (Vec [12]) @?= (Box 2 10 :: Partition)
  , testCase "Top is smallest, Bottom is largest." $
    Box (Vec [Top]) (Vec [Bottom]) <> Box (Vec [3]) (Vec [5]) @?= (Box 3 5 :: Partition)
  , testCase "Top is smallest, Bottom is largest." $
    Box (Vec [Bottom]) (Vec [Top]) <> Box (Vec [3]) (Vec [5]) @?=
      (Box (pure Bottom) (pure Top) :: Partition)
  , testProperty "Finite Box moves as expected." $ \vx vy ax ay bx by ->
      move (Vec [vx,vy]) (Box (Vec [ax,ay]) (Vec [bx,by])) ==
      (Box (Vec [ax+vx,ay+vy]) (Vec [bx+vx,by+vy]))
  , testProperty "Infinite Box moves as expected." $ \vx vy ax bx ->
      move (Vec [vx,vy]) (Box (Vec [pure ax,Top]) (Vec [pure bx,Bottom])) ==
      (Box (Vec [pure $ ax+vx,Top]) (Vec [pure $ bx+vx,Bottom]) :: Partition)
  ]

main :: IO ()
main = defaultMain tests
