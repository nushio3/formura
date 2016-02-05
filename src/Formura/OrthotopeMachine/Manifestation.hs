{- |
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental


A module for manifestation of the Orthotope Machine: that is, an operation that removes all the delayed nodes, and replace all shift instructions with cursored-load at manifest variables.
-}

{-# LANGUAGE DataKinds, DeriveFunctor, DeriveFoldable, DeriveTraversable, FlexibleInstances, PatternSynonyms,TemplateHaskell, TypeSynonymInstances, ViewPatterns #-}

module Formura.OrthotopeMachine.Manifestation where

import           Control.Lens
import qualified Data.IntMap as G

import qualified Formura.Annotation as A
import           Formura.Annotation.Representation
import           Formura.Compiler
import           Formura.GlobalEnvironment
import           Formura.OrthotopeMachine.Graph


data TranState = TranState
  { _tranSyntacticState :: CompilerSyntacticState
  , _theGraph :: Graph OMInstruction
  }
makeClassy ''TranState

instance HasCompilerSyntacticState TranState where
  compilerSyntacticState = tranSyntacticState

defaultTranState :: TranState
defaultTranState = TranState
  { _tranSyntacticState = defaultCompilerSyntacticState{ _compilerStage = "manifestation"}
  , _theGraph = G.empty
  }


type TranM = CompilerMonad GlobalEnvironment () TranState


manifestG :: Graph OMInstruction -> TranM (Graph MMInst)
manifestG omg = undefined



manifestation :: OMProgram -> TranM MMProgram
manifestation omprog = do
  ig2 <- manifestG $ omprog ^. omInitGraph
  sg2 <- manifestG $ omprog ^. omStepGraph

  return $ MachineProgram
    { _omGlobalEnvironment = omprog ^. omGlobalEnvironment
    , _omStateSignature    = omprog ^. omStateSignature
    , _omInitGraph         = ig2
    , _omStepGraph         = sg2}
