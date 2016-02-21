{- |
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental

A virtual machine with multidimensional vector instructions that operates on structured lattices, as described
in http://arxiv.org/abs/1204.4779 .
-}

{-# LANGUAGE DataKinds, DeriveDataTypeable, DeriveFunctor, DeriveFoldable, DeriveTraversable, FlexibleInstances, FunctionalDependencies, GeneralizedNewtypeDeriving, MultiParamTypeClasses, PatternSynonyms,TemplateHaskell, TypeSynonymInstances, ViewPatterns #-}

module Formura.OrthotopeMachine.Graph where

import           Algebra.Lattice
import           Control.Lens
import           Data.Data
import qualified Data.Map as M
import           Text.Read (Read(..))

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
data LoadCursorF x = LoadCursorF (Vec Int) OMNodeID
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


newtype OMNodeID = OMNodeID Int deriving (Eq, Ord, Num, Data)
instance Show OMNodeID where
  showsPrec n (OMNodeID x) = showsPrec n x
instance Read OMNodeID where
  readPrec = fmap OMNodeID  readPrec
newtype MMNodeID = MMNodeID Int deriving (Eq, Ord, Num, Data)
instance Show MMNodeID where
  showsPrec n (MMNodeID x) = showsPrec n x
instance Read MMNodeID where
  readPrec = fmap MMNodeID  readPrec

-- | The instruction type for Orthotope Machine.
type OMInstF = Sum '[DataflowInstF, LoadUncursoredF, ShiftF, OperatorF, ImmF]
type OMInstruction = OMInstF OMNodeID

-- | The instruction type for Manifest Machine, where every node is manifest,
--   and each instruction is actually a subgraph for delayed computation
type MMInstF = Sum '[DataflowInstF, LoadCursorF, OperatorF, ImmF]
type MMInstruction = M.Map MMNodeID (Node (MMInstF MMNodeID) MicroNodeType)

mmInstTail :: MMInstruction -> MMInstF MMNodeID
mmInstTail = _nodeInst . snd . M.findMax


type OMNodeType  = Fix OMNodeTypeF
type OMNodeTypeF = Sum '[ TopTypeF, GridTypeF, ElemTypeF ]

type MicroNodeType  = Fix MicroNodeTypeF
type MicroNodeTypeF = Sum '[ ElemTypeF ]


instance MeetSemiLattice OMNodeType where
  (/\) = semiLatticeOfOMNodeType

semiLatticeOfOMNodeType :: OMNodeType -> OMNodeType -> OMNodeType
semiLatticeOfOMNodeType a b = case go a b of
  TopType -> case go b a of
    TopType -> TopType
    c -> c
  c       -> c
  where
    go :: OMNodeType -> OMNodeType -> OMNodeType
    go a b | a == b = a
    go (ElemType ea) (ElemType eb) = subFix (ElemType ea /\ ElemType eb :: ElementalType)
    go a@(ElemType _) b@(GridType v c) = let d = a /\ c in
           if d==TopType then TopType else GridType v d
    go (GridType v1 c1) (GridType v2 c2) = (if v1 == v2 then GridType v1 (c1 /\ c2) else TopType)
    go _ _          = TopType

mapElemType :: (IdentName -> IdentName) -> OMNodeType -> OMNodeType
mapElemType f (ElemType t) = ElemType $ f t
mapElemType f (GridType v t) = GridType v $ mapElemType f t
mapElemType _ TopType = TopType

data Node instType typeType = Node {_nodeInst :: instType, _nodeType :: typeType, _nodeAnnot :: A.Annotation}
instance (Show v, Show t) => Show (Node v t) where
  show (Node v t _) = show v ++ " :: " ++ show t

type OMNode = Node OMInstruction OMNodeType
type MMNode = Node MMInstruction OMNodeType

makeLenses ''Node
instance A.Annotated (Node v t) where
  annotation = nodeAnnot

type Graph instType typeType = M.Map OMNodeID (Node instType typeType)
type OMGraph = Graph OMInstruction OMNodeType
type MMGraph = Graph MMInstruction OMNodeType

data NodeValueF x = NodeValueF OMNodeID OMNodeType
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

data MachineProgram instType typeType = MachineProgram
  { _omGlobalEnvironment :: GlobalEnvironment
  , _omInitGraph :: Graph instType typeType
  , _omStepGraph :: Graph instType typeType
  , _omStateSignature :: M.Map IdentName TypeExpr
  }

makeClassy ''MachineProgram


type OMProgram = MachineProgram OMInstruction OMNodeType
type MMProgram = MachineProgram MMInstruction OMNodeType

instance HasGlobalEnvironment (MachineProgram v t) where
  globalEnvironment = omGlobalEnvironment
