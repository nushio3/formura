{-# LANGUAGE ImplicitParams, TemplateHaskell #-}

module Main where

import Control.Monad.Reader
import qualified Data.Map as M
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


bodyConvertsToSingleCompound :: ImplicitGlobalEnvironment => Assertion
bodyConvertsToSingleCompound = do
  length boxes @?= 1
  where
    Compound boxes = toCompound sampleBody

    sampleBody :: Body
    sampleBody = Body samplePred

    samplePred :: SPt -> SBool
    samplePred (Vec [x,y,z]) =
      bAnd [ -1 .<= x, x .< 12,
             23 .<= y, y .< 34,
             45 .<= z, z .< 56]


bodyConvertsToCorrectCompound :: ImplicitGlobalEnvironment => Assertion
bodyConvertsToCorrectCompound = do
  volume boxes @?= 40*30*20-1
  where
    boxes = toCompound sampleBody

    sampleBody :: Body
    sampleBody = Body samplePred

    samplePred :: SPt -> SBool
    samplePred (Vec [x,y,z]) =
      bAnd [ 0 .<= x, x .< 40,
             0 .<= y, y .< 30,
             0 .<= z, z .< 20,
             x ./= 0 ||| y ./= 0 ||| z ./= 0
             ]

zipCanvasTest :: ImplicitGlobalEnvironment => Assertion
zipCanvasTest = do
  print $ foldr1 zipCanvas [canvas1, canvas2, canvas3]
  return ()
  where
    canvas1 = Canvas $ M.singleton "red"   (Compound [(Vec [0,0,0]    ,Vec [100,100,1])])
    canvas2 = Canvas $ M.singleton "blue"  (Compound [(Vec [200,200,0], Vec[300,300,1])])
    canvas3 = Canvas $ M.singleton "green" (Compound [(Vec [400,400,0], Vec[500,500,1])])


tests :: [Test]
tests = let     ?globalEnvironment =  sample3Denvironment in
  [testCase "Basic arithmetic holds." $ 2 @=? 1+1,
         testCase "We can convert a Body to Compound with expected volume." $ bodyConvertsToCorrectCompound,
         testCase "An orthotopic Body converts to singleton Compound." $ bodyConvertsToSingleCompound,
         testCase "Canvas painter generates correct painting." $ zipCanvasTest
         ]

main :: IO ()
main = defaultMain tests
