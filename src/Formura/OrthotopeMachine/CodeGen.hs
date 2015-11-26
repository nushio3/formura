{-# LANGUAGE TemplateHaskell #-}
module Formura.OrthotopeMachine.CodeGen where

import           Control.Lens
import qualified Data.Map as M
import qualified Data.IntMap as G

import           Formura.Syntax
import           Formura.Compiler
import           Formura.OrthotopeMachine.Instruction

type TypedValue = (G.Key, TypeExpr)
type Binding = M.Map IdentName TypedValue

data CodeGenState = CodeGenState
  { _codegenSyntacticState :: CompilerSyntacticState
  , _theGraph :: Graph
  }
makeClassy ''CodeGenState

instance HasCompilerSyntacticState CodeGenState where
  compilerSyntacticState = codegenSyntacticState


-- | the code generator monad.
type GenM = CompilerMonad () Binding CodeGenState


gen :: a -> IO String
gen = undefined
