{-# LANGUAGE DataKinds, DeriveFunctor, DeriveFoldable,
DeriveTraversable, FlexibleContexts, FlexibleInstances, GADTs,  PatternSynonyms,
ScopedTypeVariables,
TemplateHaskell, TypeOperators, ViewPatterns #-}
module Formura.OrthotopeMachine.Translate where

import           Algebra.Lattice
import           Control.Applicative
import           Control.Lens hiding (op)
import           Control.Monad
import           Control.Monad.Reader hiding (fix)
import qualified Data.IntMap as G
import qualified Data.Map as M
import qualified Data.Set as S
import           Data.Ratio
import           Text.Trifecta (failed, raiseErr)

import           Formura.Language.Combinator
import qualified Formura.Annotation as A
import           Formura.Annotation.Representation
import           Formura.Compiler
import           Formura.GlobalEnvironment
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
  , _codegenGlobalEnvironment :: GlobalEnvironment
  , _theGraph :: Graph
  }
makeClassy ''CodegenState

instance HasGlobalEnvironment CodegenState where
  globalEnvironment = codegenGlobalEnvironment

instance HasCompilerSyntacticState CodegenState where
  compilerSyntacticState = codegenSyntacticState

defaultCodegenState :: CodegenState
defaultCodegenState = CodegenState
  { _codegenSyntacticState = defaultCompilerSyntacticState{ _compilerStage = "codegen"}
  , _theGraph = G.empty
  , _codegenGlobalEnvironment = defaultGlobalEnvironment
  }

defaultCodegenRead :: Binding
defaultCodegenRead = M.empty

-- | the code generator monad.
type GenM = CompilerMonad Binding () CodegenState
type LexGenM = CompilerMonad LexBinding () CodegenState


-- | Set up the 'GlobalEnvironment' from the 'SpecialDeclaration' part of the the 'Program' .

setupGlobalEnvironment :: Program -> GenM ()
setupGlobalEnvironment prog = do
  dim <- case concat $ map findDimension spDecls of
    [n] -> return n
    [] -> raiseErr $ failed "no dimension declaration found."
    _  -> raiseErr $ failed "multiple dimension declaration found."
  axs <- case concat $ map findAxesDeclaration spDecls of
    [xs] | length xs == dim -> return xs
    [_] -> raiseErr $ failed "number of declared axes does not match the declared dimension."
    [] -> raiseErr $ failed "no axes declaration found."
    _  -> raiseErr $ failed "multiple axes declaration found."
  dimension .= dim
  axesNames .= axs
  where
    spDecls = prog ^. programSpecialDeclarations

    findDimension :: SpecialDeclaration -> [Int]
    findDimension (DimensionDeclaration n) = [n]
    findDimension _ = []

    findAxesDeclaration :: SpecialDeclaration -> [[IdentName]]
    findAxesDeclaration (AxesDeclaration xs) = [xs]
    findAxesDeclaration _ = []


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
  mmeta <- use compilerFocus
  case mmeta of
       Just meta -> theGraph . ix n0 . A.annotation %= A.set meta
       _         -> return ()

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
  gen (Imm r) = insert (Imm r) (ElemType "Rational")

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
    let typeModifier
          | op `S.member` comparisonOperatorNames = mapElemType (const "bool")
          | otherwise = id
    (av2 :. _) <- castVal (subFix ct) ax
    (bv2 :. _) <- castVal (subFix ct) bx
    insert (Binop op av2 bv2) (typeModifier ct)

goBinop _ _ _  = raiseErr $ failed $ "unimplemented path in binary operator"

isBoolishType :: NodeType -> Bool
isBoolishType (ElemType "bool") = True
isBoolishType (GridType _ x) = isBoolishType x
isBoolishType _ = False

goTriop :: IdentName -> ValueExpr -> ValueExpr -> ValueExpr -> GenM ValueExpr
goTriop op (av :. at) (bv :. bt) (cv :. ct)
  | op == "ite" = do
      when (not $ isBoolishType at) $
        raiseErr $ failed "the first argument of if-expr must be of type bool"
      let bct =  bt /\ ct
      case at /\ bct of
        TopType -> raiseErr $ failed $ unwords $
                   ["Type mismatch in if-then-else expr:", show at, show bt, show ct]
        _ -> insert (Triop op av bv cv) bct
goTriop _ _ _ _ = raiseErr $ failed $ "unimplemented path in trinary operator"

instance Generatable IdentF where
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

evalToImm :: ValueExpr -> GenM (Maybe Rational)
evalToImm x = do
  g <- use theGraph
  case x of
    Imm r -> return $ Just r
    n :. _ -> case G.lookup n g of
      Just (Node (Imm r) _ _) -> return $ Just r
    _ -> return Nothing

goApply :: ValueExpr -> ValueExpr -> GenM ValueExpr
goApply (Tuple xs) (Imm r) = do
  when (denominator r /= 1) $ raiseErr $ failed "non-integer indexing in tuple access"
  let n = fromInteger $  numerator r
      l = length xs
  when (n < 0 || n >= l) $ raiseErr $ failed "tuple access out of bounds"
  return $ xs!!n
goApply x@(Tuple xs) arg0 = do
  i <- evalToImm arg0
  case i of
    Just r -> goApply x (Imm r)
    _ -> do
      g <- use theGraph
      raiseErr $ failed $ "tuple applied to non-constant integer: " ++ show arg0 ++ show g
goApply (FunValue l r) x = do
  lrs <- matchToLhs l x
  let x2 :: Binding
      x2 = M.fromList lrs
  local (M.union x2) $ genRhs r
goApply  _ _ = raiseErr $ failed "unexpected combination of application"

instance Generatable LambdaF where
  -- Expand all but bound variables, in order to implement lexical scope
  gen (Lambda l r) = do
    let conv :: Binding -> CodegenState -> (LexBinding, CodegenState)
        conv b s = (M.union (lexicalScopeHolder l) $ M.map subFix b, s)
    r' <- withCompiler conv $ resolveLex $ subFix r
    return $ FunValue l r'

-- resolveLex :: RXExpr -> LexGenM RXExpr
-- resolveLex r = compilerMFold resolveLexAlg r

resolveLex :: RXExpr -> LexGenM RXExpr
resolveLex (Ident n) = do
  b <- ask
  case M.lookup n b of
    Nothing -> raiseErr $ failed $ "undefined variable: " ++ n ++ "\nwhen resolving lexical binding."
               ++ "\n Bindings:\n" ++ unwords (M.keys b)
    Just x  -> return $ subFix x
resolveLex (Lambda l r) = do
  r' <- local (M.union (lexicalScopeHolder l)) $ resolveLex $ subFix r
  return $ FunValue l r'
resolveLex (FunValue l r) = do
  r' <- local (M.union (lexicalScopeHolder l)) $ resolveLex r
  return $ FunValue l r'
resolveLex (Let b r) = do
  let ls = map fst $ substs b :: [LExpr]
  r' <- local (M.union (M.unions $ map lexicalScopeHolder ls)) $ resolveLex r
  return $ Let b r'
resolveLex (In meta fx) = do
  con <- traverse resolveLex fx
  return $ In meta con

instance Generatable LetF where
  gen (Let b genX) = withBindings b genX

namesOfLhs :: LExpr -> TupleOfIdents
namesOfLhs (Ident n) = Ident n
namesOfLhs (Grid _ x) = namesOfLhs x
namesOfLhs (Vector _ x) = namesOfLhs x
namesOfLhs (Tuple xs) = Tuple $ map namesOfLhs xs

tupleContents :: (TupleF ∈ fs) => Lang fs -> [Lang fs]
tupleContents (Tuple xs) = concat $ map tupleContents xs
tupleContents x          = [x]

matchToLhs :: (TupleF ∈ fs) => LExpr -> Lang fs -> GenM [(IdentName, Lang fs)]
matchToLhs l x = matchToIdents (namesOfLhs l) x

matchToIdents :: (TupleF ∈ fs) => TupleOfIdents -> Lang fs -> GenM [(IdentName, Lang fs)]
matchToIdents = go
  where
    go (Tuple xs) (Tuple ys) | length xs == length ys = do
                                 ms <- zipWithM go xs ys
                                 return $ concat ms
    go (Tuple _) (Tuple _) = raiseErr $ failed "tuple length mismatch."
    go (Tuple _) _         = raiseErr $ failed "the LHS expects a tuple, but RHS is not a tuple."
    go (Ident x) y = return [(x,y)]

lexicalScopeHolder :: LExpr -> LexBinding
lexicalScopeHolder l =
  let xs :: [TupleOfIdents]
      xs = tupleContents $ namesOfLhs l
      f :: TupleOfIdents -> (IdentName, ValueLexExpr)
      f (Ident x) = (x, Ident x)
      f _         = error "unexpected happened in creating a scopeHolder."
  in M.fromList $ map f xs


matchTupleRtoL :: (TupleF ∈ fs, TupleF ∈ gs) => Lang fs -> Lang gs -> GenM [(Lang fs, Lang gs)]
matchTupleRtoL = go
  where
    go (Tuple xs) (Tuple ys) | length xs == length ys = do
                                 ms <- zipWithM go xs ys
                                 return $ concat ms
    go (Tuple _) (Tuple _) = raiseErr $ failed "tuple length mismatch."
    go (Tuple _) _         = raiseErr $ failed "the LHS expects a tuple, but RHS is not a tuple."
    go x y = return [(x,y)]

withBindings :: BindingF (GenM ValueExpr) -> GenM a -> GenM a
withBindings b1 genX = do
  b0 <- view binding
  let
      typeDecls0 :: [(LExpr, TypeExpr)]
      typeDecls0 = typeDecls b1

      substs0 :: [(LExpr, GenM ValueExpr)]
      substs0 = substs b1

  let evalTypeDecl :: (LExpr, TypeExpr) -> GenM [(IdentName, TypeExpr)]
      evalTypeDecl (l, t) = matchToLhs l t
  (typeDict :: M.Map IdentName TypeExpr)
    <- (M.fromList . concat) <$> mapM evalTypeDecl typeDecls0

  let
    -- make bindings enter scope one by one, not simultaneously
    graduallyBind :: [(LExpr, GenM ValueExpr)] -> GenM [(IdentName, ValueExpr)]
    graduallyBind [] = return []
    graduallyBind ((l0,genV): restOfBinds) = do
      v0 <- genV
      lvs <- matchToLhs l0 v0
      nvs <- forM lvs $ \ (name0, v1) -> do
        v <- case M.lookup (name0) typeDict of
          Nothing -> return v1
          Just t  -> castVal t v1
        -- TODO: LHS grid pattern must be taken care of.

        case v of
           (n :. _) -> do
             theGraph . ix n . A.annotation %= A.set (SourceName $ name0)
             theGraph . ix n . A.annotation %= A.set Manifest
           _        -> return ()
        return (name0, v)

      nvs2 <- local (binding %~ M.union (M.fromList nvs)) $ graduallyBind restOfBinds
      return $ nvs ++ nvs2
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

toNodeType :: TypeExpr -> GenM NodeType
toNodeType (ElemType x) = return $ ElemType x
toNodeType (GridType v x) = do
  x2 <- toNodeType x
  return $ GridType v x2
toNodeType t = raiseErr $ failed $ "incompatible type `" ++ show t ++ "` encountered in conversion to node type."


-- | Generate code for a global function. This generates 'Load' and 'Store' nodes,
--   in addition to all the usual computation nodes.

genGlobalFunction :: BindingF RExpr -> TypeExpr -> LExpr -> RExpr -> GenM TypeExpr
genGlobalFunction globalBinding inputType outputPattern (Lambda l r) =  bindThemAll $ do
  typedLhs <- matchToLhs l inputType
  liftIO $ putStrLn $ "input type: " ++ show inputType
  initBinds <- forM typedLhs $ \(name1, t1) -> do

    t1d <- toNodeType t1
    v1 <- insert (Load name1) t1d
    let (n :. _ ) = v1
    theGraph . ix n . A.annotation %= A.set Manifest

    liftIO $ putStrLn $ "introduce binding: " ++ name1 ++ " = " ++ show v1

    return (name1, v1)

  returnValueExpr <- local (M.union $ M.fromList initBinds) $ genRhs $ subFix r

  rvElems <- matchToLhs outputPattern returnValueExpr

  forM_ rvElems $ \ (name1, rv1) -> do
    case rv1 of
      (n99 :. _ ) -> do
        (n100 :. _) <- insert (Store name1 n99) unitType
        theGraph . ix n100 . A.annotation %= A.set Manifest
        theGraph . ix n100 . A.annotation %= A.set (SourceName $ name1 ++ "_next")
      _           -> raiseErr $ failed "The return type of a global function must be a tuple of grids."

  return $ typeExprOf returnValueExpr
  where
    bindThemAll = withBindings $ fmap (genRhs .subFix) globalBinding
genGlobalFunction _ _ _ _ = raiseErr $ failed "Identifier specified for function generation is not of function type."

lookupToplevelIdents :: Program -> IdentName -> GenM RExpr
lookupToplevelIdents fprog name0 =  case lup stmts of
  [] -> raiseErr $ failed $ "Identifier `" ++ name0 ++ "` not found."
  [x] -> return x
  _  -> raiseErr $ failed $ "Multiple declaration of identifier `" ++ name0 ++ "` found."
  where
    (Program decls (BindingF stmts)) = fprog

    lup :: [StatementF RExpr] -> [RExpr]
    lup [] = []
    lup (SubstF (Ident nam) rhs : xs) | nam == name0 = rhs : lup xs
    lup (_:xs) = lup xs

genProgram :: Program -> IO OMProgram
genProgram fprog = do
  let run g = runCompilerRight g defaultCodegenRead defaultCodegenState
      gbinds = fprog ^. programBinding
  (lhsOfStep,_,_) <- run $ do
    (Lambda l _) <- lookupToplevelIdents fprog "step"
    return l

  (initType, stInit, _) <- run $ do
    setupGlobalEnvironment fprog
    initFunDef <- lookupToplevelIdents fprog "init"
    genGlobalFunction gbinds (Tuple []) lhsOfStep initFunDef
  (stateSignature0, stStep, _) <- run $ do
    stepFunDef <- lookupToplevelIdents fprog "step"
    setupGlobalEnvironment fprog
    stepType <- genGlobalFunction gbinds initType lhsOfStep stepFunDef
    when (initType /= stepType) $ do
      raiseErr $ failed $ "the return type of step : " ++ show stepType ++ "\n" ++
        "must match the return type of init : " ++ show initType

    bs99 <- matchToLhs lhsOfStep stepType
    return $ M.fromList bs99

  return OMProgram
    { _omGlobalEnvironment = stInit ^. globalEnvironment
    , _omInitGraph = stInit ^. theGraph
    , _omStepGraph = stStep ^. theGraph
    , _omStateSignature = stateSignature0
    }
