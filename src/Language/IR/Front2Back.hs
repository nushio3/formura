{-# LANGUAGE GADTs, RankNTypes, RecordWildCards, ScopedTypeVariables #-}
module Language.IR.Front2Back where

import           Compiler.Hoopl
import           Control.Lens
import qualified Data.Map as M
import           Debug.Trace
import           Text.Printf

import           Language.IR.Frontend as F
import qualified Language.IR.Backend  as B

type AnalMonad = SimpleFuelMonad
data Halo
  = Empty
  | Finite Offset Offset
  | Infinite
    deriving (Eq, Ord, Show)

type HaloMap = M.Map IdentName Halo
type TypeMap = M.Map IdentName B.TExpr
type Environment = IdentName -> B.TExpr


translateInsn :: Environment -> F.Insn a e x -> [B.Insn a O O]
translateInsn env (Declare _ _ ) = []
translateInsn env (Assign a r l) = [B.Assign a `uncurry` translateAssign env r l]

translateAssign :: Environment -> F.RExpr -> F.Expr -> (B.RExpr, B.Expr)
translateAssign env r l = (br, bl)
  where
    br = case env rident of
          B.TScalar _ -> B.RLoadScalar rident
          _           -> B.RLoad rident
    bl = translateExpr env (map negate roffset) l

    (rident, roffset) = rogo r

rogo :: RExpr -> (IdentName, Offset)
rogo (RLoad i)    = (i, replicate dimension 0)
rogo (RShift o x) = rogo x & _2 %~ zipWith (+) o

translateExpr :: Environment -> F.Offset -> F.Expr -> B.Expr
translateExpr env baseOffset fe = let go = translateExpr env baseOffset in case fe of
  Lit x         -> B.Lit x
  Load x        -> case env x of
                    B.TScalar _ -> B.LoadScalar x
                    _           -> B.Load x (map floor baseOffset)
  Shift o x     -> translateExpr env (zipWith (+) o baseOffset) x
  Uniop o x     -> B.Uniop o (go x)
  Binop o x y   -> B.Binop o (go x) (go y)
  Triop o x y z -> B.Triop o (go x) (go y) (go z)

translateType :: F.TExpr -> B.TExpr
translateType (F.TScalar x) = B.TScalar x
translateType (F.TArray o x) = B.TArray (map (const 0) o) x

translateFunction :: F.Function -> B.Function
translateFunction Function{..} =
  B.Function { B._functionName = _functionName,
               B._entryDecls = map toDecl _entryVars,
               B._middleDecls = map toDecl midVars,
               B._exitDecls = map toDecl _exitVars,
               B._functionBody = mkMiddles $ foldGraphNodes (\fi x -> x ++ translateInsn env fi) _functionBody []
             }
  where
    toDecl :: IdentName -> B.VarDecl
    toDecl n = B.VarDecl { B._varType = env n, B._varName = n}

    midVars = foldGraphNodes collectRHS _functionBody []

    collectRHS :: F.Insn a e x -> [IdentName] -> [IdentName]
    collectRHS (Assign _ r _ ) xs = fst (rogo r) :xs
    collectRHS _ xs = xs


    typeDict :: TypeMap
    typeDict = M.fromList $ map (\d -> (d^.varName,translateType $ d^.varType)) $ declarations  _functionBody

    env :: Environment
    env n = case M.lookup n typeDict  of
      Just t -> t
      Nothing ->
        trace (printf "Warning: defaulting the type of undeclared variable `%s' to 2d float array" n) $
        B.TArray [0,0] "float"



lookupHalo i = M.findWithDefault Empty i

haloPass :: BwdPass AnalMonad (Insn ()) HaloMap
haloPass = BwdPass{
  bp_lattice  = haloLattice,
  bp_transfer = haloTransfer,
  bp_rewrite  = haloRewrite
                  }

haloLattice :: DataflowLattice HaloMap
haloLattice = DataflowLattice
  { fact_name = "halo analysis"
  , fact_bot = M.empty
  , fact_join = join
  }
  where
    join _ (OldFact old) (NewFact new) = (ch, j)
      where
        ch = changeIf (j /= old)

        j = joinHaloMap old new


joinHaloMap :: HaloMap ->  HaloMap ->  HaloMap
joinHaloMap old new = M.unionWith joinHalo old new

joinHalo :: Halo -> Halo -> Halo
joinHalo Empty x = x
joinHalo x Empty = x
joinHalo Infinite _ = Infinite
joinHalo _ Infinite = Infinite
joinHalo (Finite lo1 hi1) (Finite lo2 hi2)
  | allIsSame (map remain $ lo1++hi1++lo2++hi2) =
      Finite (zipWith min lo1 lo2) (zipWith max hi1 hi2)
  | otherwise = error "remain mismatch in halo inference."
  where
    remain :: Rational -> Rational
    remain x = x - toRational (floor x)

    allIsSame [] = True
    allIsSame [ _ ] = True
    allIsSame (x:xs) = all (==x) xs


haloTransfer :: BwdTransfer (Insn a) HaloMap
haloTransfer = mkBTransfer ht
  where
    ht :: Insn a e x -> Fact x HaloMap -> HaloMap
    ht (Assign _ v e) f = joinHaloMap f (traceHaloTransfer f v e)
    ht (Declare _ _) f = f

traceHaloTransfer :: HaloMap -> RExpr -> Expr -> HaloMap
traceHaloTransfer fact rhs lhs = M.empty -- TODO
  where
    ----- todo :: handle rhs shift
    rhsHalo = lookupHalo (rhs ^. identName) fact

haloRewrite :: forall m . FuelMonad m => BwdRewrite m (Insn ()) HaloMap
haloRewrite = mkBRewrite d
  where
    d :: Insn () e x -> Fact x HaloMap -> m (Maybe (Graph (Insn ()) e x))
    d _ _ = return Nothing
