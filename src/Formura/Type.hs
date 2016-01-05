{-# LANGUAGE DataKinds, FlexibleContexts, FlexibleInstances, TypeOperators, TypeSynonymInstances #-}
module Formura.Type where

import Algebra.Lattice
import qualified Data.Set as S
import Data.Tuple(swap)

import Formura.Language.Combinator
import Formura.Syntax

unitType :: (ElemTypeF ∈ fs) => Lang fs
unitType = ElemType "void"

type ElementalType = Lang '[TopTypeF, ElemTypeF]

instance MeetSemiLattice ElementalType where
  (ElemType ea) /\ (ElemType eb) =
    case elementTypenameDecode(max (elementTypenameEncode ea) (elementTypenameEncode eb)) of
     "top" -> TopType
     str   -> ElemType str
  _ /\ _ = TopType

elementTypenames :: S.Set IdentName
elementTypenames = S.fromList $ map fst elementTypenameTable

elementTypenameTable :: [(IdentName,Int)]
elementTypenameTable = flip zip [0..]
                       ["void"
                       ,"bool"
                       ,"int"
                       ,"Rational"
                       ,"float"
                       ,"double"
                       ,"real"
                       ,"Real"]

elementTypenameEncode :: String -> Int
elementTypenameEncode str = case lookup str elementTypenameTable of
  Just i -> i
  Nothing -> maxBound

elementTypenameDecode :: Int -> String
elementTypenameDecode i = case lookup i (map swap elementTypenameTable) of
  Just n -> n
  Nothing -> "top"
