{-# LANGUAGE ImplicitParams #-}
module Formura.OrthotopeMachine.TemporalBlocking where

import Control.Lens

import Formura.CommandLineOption
import Formura.Syntax
import Formura.OrthotopeMachine.Graph
{-

data Node instType typeType = Node {_nodeInst :: instType, _nodeType :: typeType, _nodeAnnot :: A.Annotation}


type MMInstF = Sum '[DataflowInstF, LoadCursorF, OperatorF, ImmF]
type MMInstruction = M.Map MMNodeID (Node MicroInstruction MicroNodeType)
type MicroInstruction = MMInstF MMNodeID

type OMNodeType  = Fix OMNodeTypeF
type OMNodeTypeF = Sum '[ TopTypeF, GridTypeF, ElemTypeF ]

type Graph instType typeType = M.Map OMNodeID (Node instType typeType)

type MMGraph = Graph MMInstruction OMNodeType

data MachineProgram instType typeType = MachineProgram
  { _omGlobalEnvironment :: GlobalEnvironment
  , _omInitGraph :: Graph instType typeType
  , _omStepGraph :: Graph instType typeType
  , _omStateSignature :: M.Map IdentName TypeExpr
  }


-}

temporalBlocking :: WithCommandLineOption => Int -> MMProgram -> MMProgram
temporalBlocking tbFoldingNumber mmprog0 = mmprog0
  where
    stepGraph0 = mmprog0 ^. omStepGraph
