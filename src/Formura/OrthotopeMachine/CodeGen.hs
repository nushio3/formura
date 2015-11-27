{-# LANGUAGE DataKinds, FlexibleInstances, TemplateHaskell #-}
module Formura.OrthotopeMachine.CodeGen where

import           Control.Lens
import qualified Data.Map as M
import qualified Data.IntMap as G
import           Text.Trifecta (failed, raiseErr)

import           Formura.Language.Combinator
import           Formura.Syntax
import           Formura.Compiler
import           Formura.OrthotopeMachine.Instruction
import qualified Formura.Annotation as A

type NodeTypeF = Sum '[ GridF Rational, ElemTypeF ]
type NodeType  = Fix NodeTypeF


type NodeID  = G.Key
data Node = Node {_nodeInst :: OMInstF NodeID, _nodeType :: NodeType, _nodeAnnot :: A.Annotation}
makeLenses ''Node
instance A.Annotated Node where
  annotation = nodeAnnot

type Graph = G.IntMap Node
type TypedInst  = (OMInstF NodeID, NodeType)
type TypedValue = (NodeID, NodeType)


type Binding = M.Map IdentName Node

data CodeGenState = CodeGenState
  { _codegenSyntacticState :: CompilerSyntacticState
  , _theGraph :: Graph
  }
makeClassy ''CodeGenState

instance HasCompilerSyntacticState CodeGenState where
  compilerSyntacticState = codegenSyntacticState


-- | the code generator monad.
type GenM = CompilerMonad () Binding CodeGenState


class Generatable a where
  gen :: a -> GenM TypedValue

freeNodeID :: GenM NodeID
freeNodeID = do
  g <- use theGraph
  return $ G.size g

insert :: TypedInst -> GenM TypedValue
insert (inst, typ) = do
  n0 <- freeNodeID
  foc <- use compilerFocus
  let a = case foc of
        Just meta -> A.singleton meta
        Nothing   -> A.empty
  theGraph %= G.insert n0 (Node inst typ a)
  return (n0, typ)


instance Generatable (ImmF x) where
  gen (Imm r) = insert (Imm r, ElemType "Real")

instance Generatable (OperatorF TypedValue) where
  gen (Uniop op (av,at)) = insert (Uniop op av,at)
  gen (Binop op (av,at) (bv,bt)) = insert (Binop op av bv,bt)
  gen (Triop op (av, ElemType "bool") (bv,bt) (cv,ct))
    | op == "ite" && bt == ct = insert (Triop op av bv cv, bt)
  gen _ = raiseErr $ failed "unimplemented operator in eval"

instance Generatable (IdentF x) where
  gen (Ident n) = insert (Load n, ElemType "Real")

instance Generatable (TupleF TypedValue) where
  gen _ = raiseErr $ failed "gen of tuple unimplemented."

instance Generatable (GridF a x) where
  gen _ = raiseErr $ failed "gen of grid unimplemented."

instance Generatable (ApplyF x) where
  gen _ = raiseErr $ failed "gen of apply unimplemented."

instance Generatable (LambdaF x) where
  gen _ = raiseErr $ failed "gen of lambda unimplemented."

instance Generatable (LetF x) where
  gen _ = raiseErr $ failed "gen of let unimplemented."

voidGen :: a -> GenM TypedValue
voidGen _ = raiseErr $ failed "gen of void unimplemented."

instance Generatable RExpr where
  gen = compilerFoldout (gen +:: gen +:: gen +:: gen +:: gen +:: gen +:: gen +:: gen +:: voidGen
               :: RExprF TypedValue -> GenM TypedValue)
