{-# LANGUAGE ImplicitParams, TemplateHaskell #-}

module Main where

import Control.Monad.Reader
import qualified Data.Map as M
import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.QuickCheck2 (testProperty)
import Test.Framework.Providers.HUnit (testCase)
import Test.Framework.Providers.API (Test)
import Test.QuickCheck hiding ((==>))
import Test.HUnit.Base hiding (Test)

import Formura.Geometry
import Formura.GlobalEnvironment
import Formura.Vec



tests :: [Test]
tests =
  [testCase "Basic arithmetic holds." $ 2 @=? 1+1]

main :: IO ()
main = defaultMain tests
