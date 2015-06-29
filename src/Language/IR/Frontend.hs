{-# LANGUAGE FlexibleInstances, GADTs, StandaloneDeriving #-}
module Language.IR.Frontend where

{- The IR just after the parse. -}

import Compiler.Hoopl
import Control.Lens


type VarName = String
type Offset = [Rational]

data VarDecl = VarDecl {varType :: String, varOffset :: Offset, varName :: String}
           deriving (Eq, Show)

data Uniop = Neg
                   deriving (Eq, Show)
data Binop = Add | Mul
                   deriving (Eq, Show)
data Triop = FMA
                   deriving (Eq, Show)

data Expr = Lit Rational
          | Load VarName
          | Shift Offset Expr
          | Uniop Uniop Expr
          | Binop Binop Expr Expr
          | Triop Triop Expr Expr Expr
                   deriving (Eq, Show)

data RExpr
  = RLoad VarName
  | RShift Offset RExpr
  deriving (Eq, Show)


data Function = Function { name :: String, body :: Graph (Insn ()) C C }

data Insn a e x where
  Entry   :: a -> [VarDecl]              -> Insn a C O
  Declare :: a -> VarDecl                -> Insn a O O
  Assign  :: a -> RExpr -> Expr          -> Insn a O O
  Return  :: a -> [Expr]                 -> Insn a O C
deriving instance (Show r) =>  Show (Insn r e x)

attribute :: Lens (Insn a1 e x) (Insn a2 e x) a1 a2
attribute f (Entry a1 vs) = fmap (\a2 -> Entry a2 vs) (f a1)
attribute f (Declare a1 v) = fmap (\a2 -> Declare a2 v) (f a1)
attribute f (Assign a1 r e) = fmap (\a2 -> Assign a2 r e) (f a1)
attribute f (Return a1 e) = fmap (\a2 -> Return a2 e) (f a1)


instance NonLocal (Insn a) where
  entryLabel (Entry _ _) = onlyOneLabel
  successors (Return _ _) = []

type M = SimpleFuelMonad

onlyOneLabel :: Label
onlyOneLabel = runSimpleUniqueMonad $ runWithFuel 9999 $ (freshLabel :: M Label)
