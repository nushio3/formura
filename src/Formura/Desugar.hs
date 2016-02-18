{-|
Module      : Language.Formura.Desugar
Description : formura desugar
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

Desugar formura program.
-}

{-# LANGUAGE RankNTypes #-}


module Formura.Desugar where

import Control.Lens
import Data.Data
import Data.Foldable (toList)
import Data.Generics.Schemes(everywhere)

import Formura.Vec
import Formura.Syntax


mapEverywhere :: (Data a, Data b) => (b->b) -> a -> a
mapEverywhere f x = everywhere (caster f) x
  where
    caster :: (Typeable a) => (a -> a) -> (forall b. Typeable b => b -> b)
    caster f x =
      case (cast =<<) $ fmap f $ cast x of
       Just y  -> y
       Nothing -> x


desugar :: Program -> IO Program
desugar prog = do
  let dim :: Int
      dim = head $ [n | DimensionDeclaration n <- prog ^.programSpecialDeclarations] ++
            [error "no dimension declaration found."]
  let
      modifyLExpr :: GridF LExpr -> GridF LExpr
      modifyLExpr (GridF v_npk x) = GridF v_npk x
      modifyTypeExpr :: GridTypeF TypeExpr -> GridTypeF TypeExpr
      modifyTypeExpr (GridTypeF xs x) = GridTypeF (Vec $ take dim $ (toList xs) ++ repeat 0) x


  return $ mapEverywhere modifyTypeExpr prog
