{-# LANGUAGE DataKinds #-}
module Main where

import Formura.Language.Combinator
import Formura.Syntax

import qualified Test.QuickCheck as Q

type TestExpr  = Lang '[TupleF, ArithF]

main :: IO ()
main = do
  x <- Q.generate Q.arbitrary
  print (x :: TestExpr)
