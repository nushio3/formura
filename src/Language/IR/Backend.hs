{-# LANGUAGE FlexibleInstances, GADTs, RankNTypes, RecordWildCards, StandaloneDeriving, TemplateHaskell #-}
module Language.IR.Backend where

{- The IR just before the code generation. -}

import Compiler.Hoopl
import Control.Lens
import qualified Data.Map as M
import Data.List (intercalate)
import Text.Printf


import Language.IR.Frontend
  (IdentName, Uniop, Binop, Triop, onlyOneLabel,HasIdentName)
import qualified Language.IR.Frontend as F

type Offset = [Int]
data TExpr
  = TScalar IdentName
  | TArray Offset IdentName
  deriving (Eq, Show)

data VarDecl = VarDecl {_varType :: TExpr, _varName :: IdentName}
             deriving (Eq, Show)
makeLenses ''VarDecl

instance HasIdentName TExpr where
  identName f (TScalar n) = fmap TScalar (f n)
  identName f (TArray o n) = fmap (TArray o) (f n)

data Expr = Lit Rational
          | Load IdentName Offset
          | LoadScalar IdentName
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


data RExpr = RLoad IdentName | RLoadScalar IdentName
  deriving (Eq, Show)

data Function = Function { _functionName :: IdentName,
                           _entryDecls :: [VarDecl],
                           _middleDecls :: [VarDecl],
                           _exitDecls :: [VarDecl],
                           _functionBody :: Graph (Insn ()) O O }
instance Show Function where
  show (Function{..}) = let
    beg = printf "begin function (%s) = %s(%s)"
          (intercalate ", " $ map _varName _exitDecls)
          _functionName
          (intercalate ", " $ map _varName _entryDecls)
    asgs = map (\(r,l) -> printf "  %s = %s" (show r) (show l)) (assignments _functionBody)
      in unlines $ [beg] ++ asgs ++ ["end function"]


data Insn a e x where
  Assign :: a -> RExpr -> Expr          -> Insn a O O

deriving instance (Show r) =>  Show (Insn r e x)

assignments :: Graph (Insn ()) O O -> [(RExpr, Expr)]
assignments g = reverse $ foldGraphNodes go g []
  where
    go :: forall e x. Insn () e x ->  [(RExpr, Expr)] ->  [(RExpr, Expr)]
    go (Assign _ r l) xs = (r,l):xs
    go _ xs = xs

attribute :: Lens (Insn a1 e x) (Insn a2 e x) a1 a2
attribute f (Assign a1 r e) = fmap (\a2 -> Assign a2 r e) (f a1)


instance NonLocal (Insn a) where
