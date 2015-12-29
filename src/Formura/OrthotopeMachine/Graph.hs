{- |
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

A virtual machine with multidimensional vector instructions that operates on structured lattices, as described
in http://arxiv.org/abs/1204.4779 .
-}

{-# LANGUAGE DataKinds, DeriveFunctor, DeriveFoldable, DeriveTraversable, FlexibleInstances, PatternSynonyms,TemplateHaskell, TypeSynonymInstances, ViewPatterns #-}

module Formura.OrthotopeMachine.Graph where

import           Algebra.Lattice
import           Control.Lens
import qualified Data.IntMap as G
import qualified Data.Map as M
import qualified Formura.Annotation as A
import           Formura.GlobalEnvironment
import           Formura.Language.Combinator
import           Formura.Syntax
import           Formura.Type
import           Formura.Vec

-- | The functor for orthotope machine-specific instructions. Note that arithmetic operations are outsourced.

data DataflowInstF x
  = LoadF IdentName
  | StoreF IdentName x
  | LoadIndexF Int
  | LoadExtentF Int
  | ShiftF (Vec Int) x
  deriving (Eq, Ord, Show, Functor, Foldable, Traversable)


-- | smart patterns
pattern Load n <- ((^? match) -> Just (LoadF n)) where
  Load n = match # LoadF n
pattern Store n x <- ((^? match) -> Just (StoreF n x)) where
  Store n x = match # StoreF n x
pattern LoadIndex n <- ((^? match) -> Just (LoadIndexF n)) where
  LoadIndex n = match # LoadIndexF n
pattern LoadExtent n <- ((^? match) -> Just (LoadExtentF n)) where
  LoadExtent n = match # LoadExtentF n
pattern Shift v x <- ((^? match) -> Just (ShiftF v x)) where
  Shift v x = match # ShiftF v x

type OMInstF = Sum '[DataflowInstF, OperatorF, ImmF]
type OMInst  = Fix OMInstF

type NodeTypeF = Sum '[ TopTypeF, GridTypeF, ElemTypeF ]
type NodeType  = Fix NodeTypeF

instance MeetSemiLattice NodeType where
  (/\) = semiLatticeOfNodeType

semiLatticeOfNodeType :: NodeType -> NodeType -> NodeType
semiLatticeOfNodeType a b = case go a b of
  TopType -> go b a
  c       -> c
  where
    go :: NodeType -> NodeType -> NodeType
    go a b | a == b = a
    go (ElemType ea) (ElemType eb) = subFix (ElemType ea /\ ElemType eb :: ElementalType)
    go a@(ElemType _) b@(GridType v c) = let d = a /\ c in
           if d==TopType then TopType else GridType v d
    go (GridType v1 c1) (GridType v2 c2) = (if v1 == v2 then GridType v1 (c1 /\ c2) else TopType)
    go _ _          = TopType


type NodeID  = G.Key
data Node = Node {_nodeInst :: OMInstF NodeID, _nodeType :: NodeType, _nodeAnnot :: A.Annotation}
instance Show Node where
  show (Node i t _) = show i ++ " :: " ++ show t


makeLenses ''Node
instance A.Annotated Node where
  annotation = nodeAnnot

type Graph = G.IntMap Node

data NodeValueF x = NodeValueF NodeID NodeType
                 deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

pattern NodeValue n t <- ((^? match) -> Just (NodeValueF n t)) where NodeValue n t = match # NodeValueF n t
pattern n :. t <- ((^? match) -> Just (NodeValueF n t)) where n :. t = match # NodeValueF n t


data FunValueF x = FunValueF LExpr RXExpr
                 deriving (Eq, Ord, Show, Functor, Foldable, Traversable)
pattern FunValue l r <- ((^? match) -> Just (FunValueF l r)) where FunValue l r = match # FunValueF l r


-- | RXExpr is RExpr extended with NodeValue constructors
type RXExprF = Sum '[ LetF, LambdaF, ApplyF, GridF, TupleF, OperatorF, IdentF, FunValueF, NodeValueF, ImmF ]
type RXExpr  = Fix RXExprF
type ValueExprF = Sum '[TupleF, FunValueF, NodeValueF, ImmF]
type ValueExpr = Fix ValueExprF
type ValueLexExprF = Sum '[TupleF, FunValueF, NodeValueF, IdentF, ImmF]
type ValueLexExpr = Fix ValueLexExprF

data OMProgram = OMProgram
  { _omGlobalEnvironment :: GlobalEnvironment
  , _omInitGraph :: Graph
  , _omStepGraph :: Graph
  , _omStateSignature :: M.Map IdentName TypeExpr
  }

makeLenses ''OMProgram

instance HasGlobalEnvironment OMProgram where
  globalEnvironment = omGlobalEnvironment
