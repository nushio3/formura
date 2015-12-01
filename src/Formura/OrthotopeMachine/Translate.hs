{-# LANGUAGE DataKinds, DeriveFunctor, DeriveFoldable,
DeriveTraversable, FlexibleContexts, FlexibleInstances, PatternSynonyms,
TemplateHaskell, TypeOperators, ViewPatterns #-}
module Formura.OrthotopeMachine.Translate where

import           Algebra.Lattice
import           Control.Applicative
import           Control.Lens hiding (op)
import           Control.Monad
import           Control.Monad.Reader
import qualified Data.IntMap as G
import qualified Data.Map as M
import qualified Data.Set as S
import           Data.Ratio
import           Text.Trifecta (failed, raiseErr)

import           Formura.Language.Combinator
import qualified Formura.Annotation as A
import           Formura.Annotation.Representation
import           Formura.Compiler
import           Formura.Syntax
import           Formura.Type
import           Formura.Vec
import           Formura.OrthotopeMachine.Graph


type Binding = M.Map IdentName ValueExpr
type LexBinding = M.Map IdentName ValueLexExpr

class HasBinding s where
  binding :: Lens' s Binding

instance HasBinding Binding where
  binding = simple

data CodegenState = CodegenState
  { _codegenSyntacticState :: CompilerSyntacticState
  , _theGraph :: Graph
  }
makeClassy ''CodegenState

defaultCodegenState :: CodegenState
defaultCodegenState = CodegenState
  { _codegenSyntacticState = defaultCompilerSyntacticState{ _compilerStage = "codegen"}
  , _theGraph = G.empty
  }

defaultCodegenRead :: Binding
defaultCodegenRead = M.empty

instance HasCompilerSyntacticState CodegenState where
  compilerSyntacticState = codegenSyntacticState


-- | the code generator monad.
type GenM = CompilerMonad Binding () CodegenState
type LexGenM = CompilerMonad LexBinding () CodegenState


class Generatable f where
  gen :: f (GenM ValueExpr) -> GenM ValueExpr

freeNodeID :: GenM NodeID
freeNodeID = do
  g <- use theGraph
  return $ G.size g

insert :: OMInstF NodeID -> NodeType -> GenM ValueExpr
insert inst typ = do
  n0 <- freeNodeID
  foc <- use compilerFocus
  let a = case foc of
        Just meta -> A.singleton meta
        Nothing   -> A.empty
  theGraph %= G.insert n0 (Node inst typ a)
  return $ NodeValue n0 typ


-- | Find the type of a 'ValueExpr' .
typeOfVal :: ValueExpr -> TypeExpr
typeOfVal (Imm _)         = ElemType "Rational"
typeOfVal (NodeValue _ t) = subFix t
typeOfVal (FunValue _ _)  = FunType
typeOfVal (Tuple xs)      = Tuple $ map typeOfVal xs


-- | convert a value to other value, so that the result may have the given type
castVal :: TypeExpr -> ValueExpr -> GenM ValueExpr
castVal t1 vx = let t0 = typeOfVal vx in case (t1, t0, vx) of
  _ | t1 == t0 -> return vx
  (ElemType _, ElemType _, _) -> return vx
  (GridType vec (ElemType te), ElemType _, n :. _) -> return (n :. (GridType vec (ElemType te)))
  (GridType vec0 _, GridType vec1 _, _) | vec0 == vec1 ->  return vx
  _ -> raiseErr $ failed $ "cannot convert type " ++ show t0 ++ " to " ++ show t1



instance Generatable ImmF where
  gen (Imm r) = do
    insert (Imm r) (ElemType "Rational")

instance Generatable OperatorF where
  gen (Uniop op gA)       = do a <- gA                  ; goUniop op a
  gen (Binop op gA gB)    = do a <- gA; b <- gB         ; goBinop op a b
  gen (Triop op gA gB gC) = do a <- gA; b <- gB; c <- gC; goTriop op a b c

goUniop :: IdentName -> ValueExpr -> GenM ValueExpr
goUniop op (av :. at) = insert (Uniop op av) at
goUniop _ _  = raiseErr $ failed $ "unimplemented path in unary operator"

goBinop :: IdentName -> ValueExpr -> ValueExpr -> GenM ValueExpr
goBinop op ax@(av :. at) bx@(bv :. bt) = case at /\ bt of
  TopType -> raiseErr $ failed $ unwords
             ["there is no common type that can accomodate both hand side:", show at, op , show bt]
  ct -> do
    (av2 :. _) <- castVal (subFix ct) ax
    (bv2 :. _) <- castVal (subFix ct) bx
    insert (Binop op av2 bv2) ct

goBinop _ _ _  = raiseErr $ failed $ "unimplemented path in binary operator"

goTriop :: IdentName -> ValueExpr -> ValueExpr -> ValueExpr -> GenM ValueExpr
goTriop op (av :. at) (bv :. bt) (cv :. ct)
  | op == "ite" && at == ElemType "bool" && bt == ct = insert (Triop op av bv cv) bt
goTriop _ _ _ _ = raiseErr $ failed $ "unimplemented path in trinary operator"

instance Generatable IdentF where
  -- you should not generate this!
  gen (Ident n) = do
    b <- view binding
    case M.lookup n b of
      Nothing -> do
        raiseErr $ failed $ "undefined variable: " ++ n ++ "\n Bindings:\n" ++ show b
      Just x  -> return $ subFix x


instance Generatable TupleF where
  gen (Tuple xsGen) = do
    xs <- sequence xsGen
    return $ Tuple xs

instance Generatable GridF where
  gen (Grid npks gen0) = do
    vt0@(val0 :. typ0) <- gen0
    case typ0 of
      ElemType _   -> return vt0
      GridType offs0 etyp0 -> do
        let
            patK   = fmap (^. _2) (npks :: Vec NPlusK)
            newPos = offs0 - patK
            intOff = fmap floor newPos
            newOff = liftA2 (\r n -> r - fromIntegral n) newPos intOff
            typ1 = GridType newOff etyp0
        if intOff == 0
                then return (val0 :. typ1)
                else insert (Shift intOff val0) typ1

  gen _ = raiseErr $ failed "unexpected happened in gen of grid"

instance Generatable ApplyF where
  gen (Apply fgen agen) = do
    f0 <- fgen
    a0 <- agen
    goApply f0 a0

goApply :: ValueExpr -> ValueExpr -> GenM ValueExpr
goApply (Tuple xs) (Imm r) = do
  when (denominator r /= 1) $ raiseErr $ failed "non-integer indexing in tuple access"
  let n = fromInteger $  numerator r
      l = length xs
  when (n < 0 || n >= l) $ raiseErr $ failed "tuple access out of bounds"
  return $ xs!!n
goApply (Tuple xs) _ = raiseErr $ failed "tuple applied to non-constant integer"
goApply (FunValue l r) x = do
  local (M.insert (nameOfLhs l) x) $ genRhs r
goApply  _ _ = raiseErr $ failed "unexpected combination of application"

instance Generatable LambdaF where
  -- Expand all but bound variables, in order to implement lexical scope
  gen (Lambda l r) = do
    let conv :: Binding -> CodegenState -> (LexBinding, CodegenState)
        conv b s = (M.insert (nameOfLhs l) (Ident $ nameOfLhs l) $ M.map subFix b, s)
    r' <- withCompiler conv $ resolveLex $ subFix r
    return $ FunValue l r'

resolveLex :: RXExpr -> LexGenM RXExpr
resolveLex r = compilerMFold resolveLexAlg r

resolveLexAlg :: RXExprF RXExpr -> LexGenM RXExpr
resolveLexAlg (Ident n) = do
  b <- ask
  case M.lookup n b of
    Nothing -> raiseErr $ failed $ "undefined variable: " ++ n
    Just x  -> return $ subFix x
resolveLexAlg (Lambda l r) = do
  r' <- local (M.insert (nameOfLhs l) (Ident $ nameOfLhs l)) $ resolveLex $ subFix r
  return $ FunValue l r'
resolveLexAlg (FunValue l r) = do
  r' <- local (M.insert (nameOfLhs l) (Ident $ nameOfLhs l)) $ resolveLex r
  return $ FunValue l r'
resolveLexAlg fx = mTransAlg fx

instance Generatable LetF where
  gen (Let b genX) = withBindings b genX

nameOfLhs :: LExpr -> IdentName
nameOfLhs (Ident n) = n
nameOfLhs (Grid _ x) = nameOfLhs x
nameOfLhs (Vector _ x) = nameOfLhs x
nameOfLhs _ = error "tuple unsupported in type decl"

withBindings :: BindingF (GenM ValueExpr) -> GenM ValueExpr -> GenM ValueExpr
withBindings b1 genX = do
  b0 <- view binding
  let
      BindingF stmts0 = b1
      typeDecls0 :: [(LExpr, TypeExpr)]
      typeDecls0 = concat $ flip map stmts0 $ \x -> case x of
        TypeDeclF t l -> [(l, t)]
        _             -> []

      substs0 :: [(LExpr, GenM ValueExpr)]
      substs0 = concat $ flip map stmts0 $ \x -> case x of
        SubstF l r -> [(l, r)]
        _             -> []

      typeDict :: M.Map IdentName TypeExpr
      typeDict = M.fromList [(nameOfLhs l, t) | (l,t)<- typeDecls0]

  let
    -- Let bindings enter scope one by one, not simultaneously
    graduallyBind :: [(LExpr, GenM ValueExpr)] -> GenM [(IdentName, ValueExpr)]
    graduallyBind [] = return []
    graduallyBind ((l,genV): restOfBinds) = do
      v0 <- genV
      v <- case M.lookup (nameOfLhs l) typeDict of
        Nothing -> return v0
        Just t  -> castVal t v0
      case v of
       (n :. _) -> theGraph . ix n . A.annotation %= A.set (SourceName $ nameOfLhs l)
       _        -> return ()

      -- TODO: LHS grid pattern must be taken care of.

      b2s <- local (binding %~ M.insert (nameOfLhs l) v) $ graduallyBind restOfBinds
      return ((nameOfLhs l, v) : b2s)
  substs1 <- graduallyBind substs0


  --  M.union prefers left-hand-side when duplicate keys are encountered
  local (binding %~ M.union (M.fromList substs1)) genX




instance Generatable (Sum '[]) where
  gen _ =  raiseErr $ failed "impossible happened: gen of Void"

instance Generatable NodeValueF where
  gen (NodeValue t v) = return (NodeValue t v)

instance Generatable FunValueF where
  gen (FunValue l r) = return (FunValue l r)

instance (Generatable f, Generatable (Sum fs)) => Generatable (Sum (f ': fs)) where
  gen =  gen +:: gen

genRhs :: RXExpr -> GenM ValueExpr
genRhs r = compilerFoldout gen r

genMainFunction :: RExpr -> GenM ()
genMainFunction (Lambda l r) = do
  v <- insert (Load "input_value") (GridType (Vec [0]) (ElemType "double"))
  let (n :. _ ) = v
  theGraph . ix n . A.annotation %= A.set Manifest

  (n99 :. t99) <- genRhs $ Apply (FunValue l (subFix r)) (subFix v)

  theGraph . ix n99 . A.annotation %= A.set Manifest
  return ()
genMainFunction _ = raiseErr $ failed "Please specify a function for generation"
