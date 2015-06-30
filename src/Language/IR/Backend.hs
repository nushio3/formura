{-# LANGUAGE FlexibleInstances, GADTs, StandaloneDeriving #-}
module Language.IR.Backend where

{- The IR just before the code generation. -}

import Compiler.Hoopl
import Control.Lens

import Language.IR.Frontend
  (VarName, Uniop, Binop, Triop, onlyOneLabel)
import qualified Language.IR.Frontend as F

type Offset = [Int]
data VarDecl = VarDecl {varType :: String, varHalo :: (Offset,Offset), varName :: String}
           deriving (Eq, Show)

data Expr = Lit Rational
          | Load VarName Offset
          | Uniop Uniop Expr
          | Binop Binop Expr Expr
          | Triop Triop Expr Expr Expr
                   deriving (Eq, Show)

instance Num Expr where
  a+b = Binop F.Add a b
  a-b = Binop F.Sub a b
  a*b = Binop F.Mul a b
  negate = Uniop F.Neg
  fromInteger = Lit . fromInteger
  abs = error "no abs for Expr"
  signum = error "no signum for Expr"

instance Fractional Expr where
  a/b = Binop F.Div a b
  fromRational = Lit


data RExpr = RLoad VarName
  deriving (Eq, Show)

data Function = Function { name :: String,
                           entryDecls :: [VarDecl],
                           middleDecls :: [VarDecl],
                           body :: Graph (Insn ()) O O }

data Insn a e x where
  Assign :: a -> RExpr -> Expr          -> Insn a O O

deriving instance (Show r) =>  Show (Insn r e x)

attribute :: Lens (Insn a1 e x) (Insn a2 e x) a1 a2
attribute f (Assign a1 r e) = fmap (\a2 -> Assign a2 r e) (f a1)


instance NonLocal (Insn a) where
