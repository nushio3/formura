{-# LANGUAGE TemplateHaskell #-}
module Formura.Interpreter.Eval where

import           Control.Lens
import qualified Data.Map as M

import           Formura.Interpreter.Value
import           Formura.Compiler
import           Formura.Language.Combinator
import           Formura.Syntax


type Binding = M.Map IdentName TypedValue

data Environment =
  Environment
  { _envDimension :: Int
  , _envExtent :: [Int]
  , _envCS :: CompilerSyntaticState
  }

makeLenses ''Environment

instance HasCompilerSyntaticState Environment where
  compilerSyntaticState = envCS

type IM = CompilerMonad Binding () Environment
type IAlgebra f a = f a -> IM a

class Evalable a where
  eval :: a -> IM TypedValue

iFold :: (Traversable f) => IAlgebra f (Lang g) -> Fix f -> IM (Lang g)
iFold = compilerFold
