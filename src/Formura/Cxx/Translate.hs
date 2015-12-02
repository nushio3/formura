{-# LANGUAGE TemplateHaskell #-}

module Formura.Cxx.Translate where

import           Control.Lens
import qualified Data.IntMap as G
import           Data.Monoid
import qualified Data.Text as T

import qualified Formura.Annotation as A
import           Formura.Annotation.Representation
import           Formura.Compiler
import           Formura.OrthotopeMachine.Graph
import           Formura.Vec


data TranState = TranState
  { _tranSyntacticState :: CompilerSyntacticState
  , _extent :: Vec Int }
makeClassy ''TranState


defaultTranState :: TranState
defaultTranState = TranState
  { _tranSyntacticState = defaultCompilerSyntacticState{ _compilerStage = "C++ code generation"}
  , _extent = Vec [128]
  }


translate :: Graph -> T.Text
translate _ = T.pack "hello world"

manifestNodes :: Graph -> [NodeID]
manifestNodes g =
  map fst $
  filter f $
  G.toList g
  where
    f :: (NodeID, Node) -> Bool
    f (_, nd) = case A.viewMaybe nd of
      Just Manifest -> True
      _             -> False
