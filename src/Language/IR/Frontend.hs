{-# LANGUAGE FlexibleInstances, GADTs, RankNTypes, StandaloneDeriving, TemplateHaskell,RecordWildCards #-}
module Language.IR.Frontend where

{- The IR just after the parse. -}

import Compiler.Hoopl
import Control.Lens
import Data.List (intercalate)
import Text.Printf

type IdentName = String
type Offset = [Rational]

data VarDecl = VarDecl { _varType :: String, _varOffset :: Offset, _varName :: IdentName}
           deriving (Eq, Show)
makeLenses ''VarDecl

data Uniop = Neg
                   deriving (Eq, Show)
data Binop = Add | Mul | Sub | Div | Pow
                   deriving (Eq, Show)
data Triop = FMA
                   deriving (Eq, Show)

data Expr = Lit Rational
          | Load IdentName
          | Shift Offset Expr
          | Uniop Uniop Expr
          | Binop Binop Expr Expr
          | Triop Triop Expr Expr Expr
                   deriving (Eq, Show)

data RExpr
  = RLoad IdentName
  | RShift Offset RExpr
  deriving (Eq, Show)


data Function = Function { _functionName :: String,
                           _entryVars :: [IdentName],
                           _exitVars :: [IdentName],
                           _functionBody :: Graph (Insn ()) C C }
instance Show Function where
  show (Function{..}) = let
    beg = printf "begin function (%s) = %s(%s)"    (intercalate ", " _exitVars) _functionName (intercalate ", " _entryVars)
    asgs = map (\(r,l) -> printf "  %s = %s" (show r) (show l)) (assignments _functionBody)
      in unlines $ [beg] ++ asgs ++ ["end function"]


assignments :: Graph (Insn ()) C C -> [(RExpr, Expr)]
assignments g = reverse $ foldGraphNodes go g []
  where
    go :: forall e x. Insn () e x ->  [(RExpr, Expr)] ->  [(RExpr, Expr)]
    go (Assign _ r l) xs = (r,l):xs
    go _ xs = xs

type ClosedInsnGraph = Graph (Insn ()) C C

emptyGraph :: Graph (Insn ()) C C
emptyGraph = bodyGraph emptyBody

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
