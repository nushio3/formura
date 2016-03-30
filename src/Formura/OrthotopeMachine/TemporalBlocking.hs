{-# LANGUAGE ImplicitParams, TypeFamilies #-}
module Formura.OrthotopeMachine.TemporalBlocking where

import           Control.Lens
import qualified Data.Map as M
import           Data.Maybe
import           System.IO.Unsafe

import Formura.Language.Combinator
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


-- | Create an n-fold dataflow graph from an MMProgram.
-- .
-- The function relies on the invariants:
-- 1. There is at most one Store MicroInstruction in each MMInstruction
-- 2. The Store instruction is always the last node in MMInstruction
-- 3. The Store instruction always refers to its previous instruction
-- .
-- These invariants are created by genGlobalFunction from Formura.OrthotopeMachine.Translate

temporalBlocking :: WithCommandLineOption => Int -> MMProgram -> MMProgram
temporalBlocking tbFoldingNumber mmprog0 = mmprog0 & omStepGraph .~ stepGraphN
  where
    stepGraphN = M.unions
      [ mkNthGraph i
      | i <-[0..tbFoldingNumber-1]
      ]

    stepGraph0 :: MMGraph
    stepGraph0 = mmprog0 ^. omStepGraph

    minOMNodeID = minimum $ M.keys stepGraph0
    maxOMNodeID = maximum $ M.keys stepGraph0
    omNodeIDStride = maxOMNodeID - minOMNodeID + 1

    storeInstID :: M.Map IdentName OMNodeID
    storeInstID = M.fromList
      [ (st, omid)
      | st <- M.keys (mmprog0 ^. omStateSignature)
      , (omid, mmnode) <- M.toList stepGraph0
      , anyOf (nodeInst . traverse . nodeInst) (isStoreInst st) mmnode
      ]

    isStoreInst :: IdentName -> MicroInstruction -> Bool
    isStoreInst n1 (Store n2 _) | n1 == n2 = True
    isStoreInst _  _                       = False

    mkNthGraph :: Int -> MMGraph
    mkNthGraph i =
      addOMStride (fromIntegral i * omNodeIDStride) $
      (if i > 0 then behead else id) $
      (if i < tbFoldingNumber-1 then betail else id) $
      stepGraph0

    addOMStride :: OMNodeID -> MMGraph -> MMGraph
    addOMStride i gr = let
      go :: MicroInstruction -> MicroInstruction
      go (LoadCursor v j) = LoadCursor v (i+j)
      go x = x
      in microInstsOfMMGraph %~ go $ M.mapKeys (+i) gr

    microInstsOfMMGraph :: Traversal' MMGraph MicroInstruction
    microInstsOfMMGraph = traverse . nodeInst . traverse . nodeInst

    behead :: MMGraph -> MMGraph
    behead = microInstsOfMMGraph %~ beheadMicroInst

    beheadMicroInst :: MicroInstruction -> MicroInstruction
    beheadMicroInst (LoadCursorStatic v ident) =
      let Just i = M.lookup ident storeInstID in LoadCursor v (i - omNodeIDStride)
    beheadMicroInst x = x

    betail :: MMGraph -> MMGraph
    betail = M.map betailMMNode

    lookupStoreDest :: MMInstruction -> Maybe IdentName
    lookupStoreDest mminst = listToMaybe
      [ ident
      | Store ident _ <- map (^. nodeInst) $ M.elems mminst]

    betailMMNode :: MMNode -> MMNode
    betailMMNode nd0 = case lookupStoreDest $ nd0 ^. nodeInst of
      Just ident ->
        let
          typ0 :: TypeExpr
          typ0 = fromJust $ M.lookup ident $ mmprog0 ^. omStateSignature
          typ1 :: OMNodeType
          typ1 = go typ0
          go (GridType v x) = GridType v $ go x
          go (ElemType e)   = ElemType e
          go _              = TopType
        in
        nd0
        & nodeInst %~ betailMMInst
        & nodeType .~ typ1
      Nothing -> nd0

    betailMMInst :: MMInstruction -> MMInstruction
    betailMMInst = M.map storeToReturn

    storeToReturn :: MicroNode -> MicroNode
    storeToReturn nd0 = case nd0 ^. nodeInst of
      (Store ident x) ->
        nd0
        & nodeInst .~ Uniop "+" x
      _ -> nd0
