{-# LANGUAGE FlexibleInstances, GADTs, StandaloneDeriving, TemplateHaskell #-}
module Language.IR.Frontend where

{- The IR just after the parse. -}

import Compiler.Hoopl
import Control.Lens


type SymbolName = String
type Offset = [Rational]

data VarDecl = VarDecl { _varType :: String, _varOffset :: Offset, _varName :: SymbolName}
           deriving (Eq, Show)
makeLenses ''VarDecl

data Uniop = Neg
                   deriving (Eq, Show)
data Binop = Add | Mul | Sub | Div
                   deriving (Eq, Show)
data Triop = FMA
                   deriving (Eq, Show)

data Expr = Lit Rational
          | Load SymbolName
          | Shift Offset Expr
          | Uniop Uniop Expr
          | Binop Binop Expr Expr
          | Triop Triop Expr Expr Expr
                   deriving (Eq, Show)

data RExpr
  = RLoad SymbolName
  | RShift Offset RExpr
  deriving (Eq, Show)


data Function = Function { _functionName :: String,
                           _entryVars :: [SymbolName],
                           _exitVars :: [SymbolName],
                           _functionBody :: Graph (Insn ()) C C }

data Insn a e x where
  Entry   :: a                           -> Insn a C O
  Declare :: a -> VarDecl                -> Insn a O O
  Assign  :: a -> RExpr -> Expr          -> Insn a O O
  Exit    :: a                           -> Insn a O C

deriving instance (Show a) =>  Show (Insn a e x)

attribute :: Lens (Insn a1 e x) (Insn a2 e x) a1 a2
attribute f (Entry a1 ) = fmap (\a2 -> Entry a2 ) (f a1)
attribute f (Declare a1 v) = fmap (\a2 -> Declare a2 v) (f a1)
attribute f (Assign a1 r e) = fmap (\a2 -> Assign a2 r e) (f a1)
attribute f (Exit a1 ) = fmap (\a2 -> Exit a2 ) (f a1)


instance NonLocal (Insn a) where
  entryLabel (Entry _ ) = onlyOneLabel
  successors (Exit _ ) = []

type M = SimpleFuelMonad

onlyOneLabel :: Label
onlyOneLabel = runSimpleUniqueMonad $ runWithFuel 9999 $ (freshLabel :: M Label)
