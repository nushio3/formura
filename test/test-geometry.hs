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


bodyConvertsToCorrectCompound :: Assertion
bodyConvertsToCorrectCompound = do
  Compound boxes <- runReaderT go sample3Denvironment
  0 @=? length boxes
  where
    go = bodyToCompound sampleBody

    sampleBody :: Body
    sampleBody = Body samplePred

    samplePred :: Pt -> SBool
    samplePred (Vec [x,y,z]) =
      bAnd [ 0 .<= x, x .< 40,
             0 .<= y, y .< 30,
             0 .<= z, z .< 20,
             x ./= 16 ||| y ./= 16 ||| z ./= 16]
{-      bAnd [x+y+z .<= 32,
            x+y+z .>= -30,
            x+y-z .<= 30,
            x+y-z .>= -30,
            x-y+z .<= 30,
            x-y+z .>= -30,
            -x+y+z .<= 30,
            -x+y+z .>= -30
            ]-}

tests :: [Test]
tests = [testCase "Basic arithmetic holds." $ 2 @=? 1+1,
         testCase "We can convert a Body to correct Compound." $ bodyConvertsToCorrectCompound]

main :: IO ()
main = defaultMain tests
