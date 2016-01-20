{-# LANGUAGE TemplateHaskell #-}

module Main where

import Control.Monad.Reader
import Data.SBV
import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.QuickCheck2 (testProperty)
import Test.Framework.Providers.HUnit (testCase)
import Test.Framework.Providers.API (Test)
import Test.QuickCheck hiding ((==>))
import Test.HUnit.Base hiding (Test)

import Formura.Geometry
import Formura.GlobalEnvironment
import Formura.Vec


bodyConvertsToSingleCompound :: Assertion
bodyConvertsToSingleCompound = do
  Compound boxes <- runReaderT go sample3Denvironment
  length boxes @?= 1
  where
    go = bodyToCompound sampleBody

    sampleBody :: Body
    sampleBody = Body samplePred

    samplePred :: SPt -> SBool
    samplePred (Vec [x,y,z]) =
      bAnd [ -1 .<= x, x .< 12,
             23 .<= y, y .< 34,
             45 .<= z, z .< 56]


bodyConvertsToCorrectCompound :: Assertion
bodyConvertsToCorrectCompound = do
  boxes <- runReaderT go sample3Denvironment
  volume boxes @?= 40*30*20-1
  where
    go = bodyToCompound sampleBody

    sampleBody :: Body
    sampleBody = Body samplePred

    samplePred :: SPt -> SBool
    samplePred (Vec [x,y,z]) =
      bAnd [ 0 .<= x, x .< 40,
             0 .<= y, y .< 30,
             0 .<= z, z .< 20,
             x ./= 0 ||| y ./= 0 ||| z ./= 0
             ]

tests :: [Test]
tests = [testCase "Basic arithmetic holds." $ 2 @=? 1+1,
         testCase "We can convert a Body to Compound with expected volume." $ bodyConvertsToCorrectCompound,
         testCase "An orthotopic Body converts to singleton Compound." $ bodyConvertsToSingleCompound
         ]

main :: IO ()
main = defaultMain tests
