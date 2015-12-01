{-# LANGUAGE DataKinds, FlexibleInstances, TypeSynonymInstances #-}
module Formura.Type where

import Algebra.Lattice
import Data.Tuple(swap)

import Formura.Language.Combinator
import Formura.Syntax


type ElementalType = Lang '[TopTypeF, ElemTypeF]

instance MeetSemiLattice ElementalType where
  (ElemType ea) /\ (ElemType eb) =
    case elementTypenameDecode(max (elementTypenameEncode ea) (elementTypenameEncode eb)) of
     "top" -> TopType
     str   -> ElemType str
  _ /\ _ = TopType

elementTypenameTable :: [(String,Int)]
elementTypenameTable =
      [("Rational", 0)
      ,("float", 1)
      ,("double", 2)
      ,("real", 3)
      ,("Real", 4)]


elementTypenameEncode :: String -> Int
elementTypenameEncode str = case lookup str elementTypenameTable of
  Just i -> i
  Nothing -> maxBound



elementTypenameDecode :: Int -> String
elementTypenameDecode i = case lookup i (map swap elementTypenameTable) of
  Just n -> n
  Nothing -> "top"
