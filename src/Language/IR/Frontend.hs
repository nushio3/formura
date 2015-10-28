{-# LANGUAGE FlexibleInstances, GADTs, RankNTypes, StandaloneDeriving, TemplateHaskell,RecordWildCards #-}
module Language.IR.Frontend where

{- The IR just after the parse. -}

import Compiler.Hoopl
import Control.Lens
import Data.List (intercalate)
import Text.Printf

dimension :: Int
dimension = 2

type IdentName = String
type Offset = [Rational]

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

class HasIdentName s where
  identName :: Lens' s IdentName

data TExpr
  = TScalar IdentName
  | TArray Offset IdentName
  deriving (Eq, Show)
instance HasIdentName TExpr where
  identName f (TScalar n) = fmap TScalar (f n)
  identName f (TArray o n) = fmap (TArray o) (f n)


data VarDecl = VarDecl { _varType :: TExpr, _varName :: IdentName}
           deriving (Eq, Show)
makeLenses ''VarDecl


data LExpr
  = LLoad IdentName
  | LShift Offset LExpr
  deriving (Eq, Show)

instance HasIdentName LExpr where
  identName f (LLoad n) = fmap LLoad (f n)
  identName f (LShift o rx) = fmap (LShift o) (identName f rx)



data Function = Function { _functionName :: String,
                           _entryVars :: [IdentName],
                           _exitVars :: [IdentName],
                           _functionBody :: FunctionBody }

instance Show Function where
  show (Function{..}) = let
    beg = printf "begin function (%s) = %s(%s)"    (intercalate ", " _exitVars) _functionName (intercalate ", " _entryVars)
    asgs = map (\(r,l) -> printf "  %s = %s" (show r) (show l)) (assignments _functionBody)
    dcls = map (\dec -> printf "  %s :: %s" (show $ dec^.varType) (dec^.varName)) (declarations _functionBody)
      in unlines $ [beg] ++ dcls ++ asgs ++ ["end function"]


assignments :: Graph (Insn ()) O O -> [(LExpr, Expr)]
assignments g = reverse $ foldGraphNodes go g []
  where
    go :: forall e x. Insn () e x ->  [(LExpr, Expr)] ->  [(LExpr, Expr)]
    go (Assign _ r l) xs = (r,l):xs
    go _ xs = xs

declarations :: Graph (Insn ()) O O -> [VarDecl]
declarations g = reverse $ foldGraphNodes go g []
  where
    go :: forall e x. Insn () e x -> [VarDecl] -> [VarDecl]
    go (Declare _ v) xs = v:xs
    go _ xs = xs


type FunctionBody = Graph (Insn ()) O O

data Insn a e x where
  Declare :: a -> VarDecl                -> Insn a O O
  Assign  :: a -> LExpr -> Expr          -> Insn a O O

deriving instance (Show a) =>  Show (Insn a e x)

attribute :: Lens (Insn a1 e x) (Insn a2 e x) a1 a2
attribute f (Declare a1 v) = fmap (\a2 -> Declare a2 v) (f a1)
attribute f (Assign a1 r e) = fmap (\a2 -> Assign a2 r e) (f a1)


instance NonLocal (Insn a) where

onlyOneLabel :: Label
onlyOneLabel = runSimpleUniqueMonad $ runWithFuel infiniteFuel $ (freshLabel :: SimpleFuelMonad Label)
