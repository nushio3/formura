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
    Orthotope (Vec [1]) (Vec [10]) <> Orthotope (Vec [2]) (Vec [12]) @?= (Orthotope 2 10 :: Partition)
  , testCase "Top is smallest, Bottom is largest." $
    Orthotope (Vec [Top]) (Vec [Bottom]) <> Orthotope (Vec [3]) (Vec [5]) @?= (Orthotope 3 5 :: Partition)
  , testCase "Top is smallest, Bottom is largest." $
    Orthotope (Vec [Bottom]) (Vec [Top]) <> Orthotope (Vec [3]) (Vec [5]) @?=
      (Orthotope (pure Bottom) (pure Top) :: Partition)
  , testProperty "Finite Orthotope moves as expected." $ \vx vy ax ay bx by ->
      move (Vec [vx,vy]) (Orthotope (Vec [ax,ay]) (Vec [bx,by])) ==
      (Orthotope (Vec [ax+vx,ay+vy]) (Vec [bx+vx,by+vy]))
  , testProperty "Infinite Orthotope moves as expected." $ \vx vy ax bx ->
      move (Vec [vx,vy]) (Orthotope (Vec [pure ax,Top]) (Vec [pure bx,Bottom])) ==
      (Orthotope (Vec [pure $ ax+vx,Top]) (Vec [pure $ bx+vx,Bottom]) :: Partition)
  ]

main :: IO ()
main = defaultMain tests
