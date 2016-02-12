{- |
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

A virtual machine with multidimensional vector instructions that operates on structured lattices, as described
in http://arxiv.org/abs/1204.4779 .
-}

{-# LANGUAGE DataKinds, DeriveFunctor, DeriveFoldable, DeriveTraversable, FlexibleInstances, FunctionalDependencies, MultiParamTypeClasses, PatternSynonyms,TemplateHaskell, TypeSynonymInstances, ViewPatterns #-}

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

data LoadUncursoredF x = LoadF IdentName
  deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

data DataflowInstF x
  = StoreF IdentName x
  | LoadIndexF Int
  | LoadExtentF Int
  deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

-- | The functor for language that support shift operations.
data ShiftF x = ShiftF (Vec Int) x
  deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

-- | The functor for language that support cursored load of graph nodes.
data LoadCursorF x = LoadCursorF (Vec Int) NodeID
                   | LoadCursorStaticF (Vec Int) IdentName
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
pattern LoadCursor v x <- ((^? match) -> Just (LoadCursorF v x)) where
  LoadCursor v x = match # LoadCursorF v x
pattern LoadCursorStatic v x <- ((^? match) -> Just (LoadCursorStaticF v x)) where
  LoadCursorStatic v x = match # LoadCursorStaticF v x


-- | The instruction type for Orthotope Machine.
type OMInstF = Sum '[DataflowInstF, LoadUncursoredF, ShiftF, OperatorF, ImmF]
type OMInstruction = OMInstF NodeID

-- | The instruction type for Manifest Machine, where every node is manifest
type MMInstF = Sum '[DataflowInstF, LoadCursorF, OperatorF, ImmF]
type MMInstruction = G.IntMap (MMInstF NodeID)


type NodeType  = Fix NodeTypeF
type NodeTypeF = Sum '[ TopTypeF, GridTypeF, ElemTypeF ]


instance MeetSemiLattice NodeType where
  (/\) = semiLatticeOfNodeType

semiLatticeOfNodeType :: NodeType -> NodeType -> NodeType
semiLatticeOfNodeType a b = case go a b of
  TopType -> case go b a of
    TopType -> TopType
    c -> c
  c       -> c
  where
    go :: NodeType -> NodeType -> NodeType
    go a b | a == b = a
    go (ElemType ea) (ElemType eb) = subFix (ElemType ea /\ ElemType eb :: ElementalType)
    go a@(ElemType _) b@(GridType v c) = let d = a /\ c in
           if d==TopType then TopType else GridType v d
    go (GridType v1 c1) (GridType v2 c2) = (if v1 == v2 then GridType v1 (c1 /\ c2) else TopType)
    go _ _          = TopType

mapElemType :: (IdentName -> IdentName) -> NodeType -> NodeType
mapElemType f (ElemType t) = ElemType $ f t
mapElemType f (GridType v t) = GridType v $ mapElemType f t
mapElemType _ TopType = TopType

type NodeID  = G.Key
data Node instType = Node {_nodeInst :: instType, _nodeType :: NodeType, _nodeAnnot :: A.Annotation}
instance Show a => Show (Node a) where
  show (Node i t _) = show i ++ " :: " ++ show t

type OMNode = Node OMInstruction
type MMNode = Node MMInstruction

makeLenses ''Node
instance A.Annotated (Node a) where
  annotation = nodeAnnot

type Graph instType = G.IntMap (Node instType)

data NodeValueF x = NodeValueF NodeID NodeType
                 deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

pattern NodeValue n t <- ((^? match) -> Just (NodeValueF n t)) where NodeValue n t = match # NodeValueF n t
pattern n :. t <- ((^? match) -> Just (NodeValueF n t)) where n :. t = match # NodeValueF n t


data FunValueF x = FunValueF LExpr RXExpr
                 deriving (Eq, Ord, Show, Functor, Foldable, Traversable)
pattern FunValue l r <- ((^? match) -> Just (FunValueF l r)) where FunValue l r = match # FunValueF l r


-- | RXExpr is RExpr extended with NodeValue constructors
type RXExpr  = Fix RXExprF
type RXExprF = Sum '[ LetF, LambdaF, ApplyF, GridF, TupleF, OperatorF, IdentF, FunValueF, NodeValueF, ImmF ]
-- | 'ValueExpr' represents final forms of orthotope machine evaluation.
type ValueExpr = Fix ValueExprF
type ValueExprF = Sum '[TupleF, FunValueF, NodeValueF, ImmF]
-- | 'ValueLexExpr' extends 'ValueExpr' with unresolved identifiers. Expressions with free variables evaluate to 'ValueLexExpr' , not 'ValueExpr' .
type ValueLexExpr = Fix ValueLexExprF
type ValueLexExprF = Sum '[TupleF, FunValueF, NodeValueF, IdentF, ImmF]

instance Typed ValueExpr where
  typeExprOf (Imm _) = ElemType "Rational"
  typeExprOf (NodeValue _ t) = subFix t
  typeExprOf (FunValue _ _) = FunType
  typeExprOf (Tuple xs) = Tuple $ map typeExprOf xs

data MachineProgram instType = MachineProgram
  { _omGlobalEnvironment :: GlobalEnvironment
  , _omInitGraph :: Graph instType
  , _omStepGraph :: Graph instType
  , _omStateSignature :: M.Map IdentName TypeExpr
  }

makeClassy ''MachineProgram

type OMProgram = MachineProgram OMInstruction
type MMProgram = MachineProgram MMInstruction

instance HasGlobalEnvironment (MachineProgram a) where
  globalEnvironment = omGlobalEnvironment
