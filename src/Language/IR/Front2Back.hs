{-# LANGUAGE GADTs, RankNTypes, RecordWildCards, ScopedTypeVariables #-}
module Language.IR.Front2Back where

import           Compiler.Hoopl
import           Control.Lens
import qualified Data.Map as M


import           Language.IR.Frontend as F
import qualified Language.IR.Backend  as B

translateInsn :: F.Insn a e x -> [B.Insn a O O]
translateInsn (Declare _ _ ) = []
translateInsn (Assign a r l) = [B.Assign a `uncurry` translateAssign r l]

translateAssign :: F.RExpr -> F.Expr -> (B.RExpr, B.Expr)
translateAssign r l = (br, bl)
  where
    br = B.RLoad rident
    bl = translateExpr (map negate roffset) l

    (rident, roffset) = rogo r

rogo :: RExpr -> (IdentName, Offset)
rogo (RLoad i)    = (i, replicate dimension 0)
rogo (RShift o x) = rogo x & _2 %~ zipWith (+) o

translateExpr :: F.Offset -> F.Expr -> B.Expr
translateExpr baseOffset fe = let go = translateExpr baseOffset in case fe of
  Lit x         -> B.Lit x
  Load x        -> B.Load x (map floor baseOffset)
  Shift o x     -> translateExpr (zipWith (+) o baseOffset) x
  Uniop o x     -> B.Uniop o (go x)
  Binop o x y   -> B.Binop o (go x) (go y)
  Triop o x y z -> B.Triop o (go x) (go y) (go z)

translateFunction :: F.Function -> B.Function
translateFunction Function{..} =
  B.Function { B._functionName = _functionName,
               B._entryDecls = map toDecl _entryVars,
               B._middleDecls = map toDecl midVars,
               B._exitDecls = map toDecl _exitVars,
               B._functionBody = mkMiddles $ foldGraphNodes (\fi x -> x ++ translateInsn fi) _functionBody []
             }
  where
    toDecl :: IdentName -> B.VarDecl
    toDecl n = B.VarDecl { B._varType = "float", B._varHalo = [0,0], B._varName = n}

    midVars = foldGraphNodes collectRHS _functionBody []

    collectRHS :: F.Insn a e x -> [IdentName] -> [IdentName]
    collectRHS (Assign _ r _ ) xs = fst (rogo r) :xs
    collectRHS _ xs = xs

    typeDict :: TypeMap
    typeDict = M.fromList $ map (\d -> (d^.varName, d^.varType)) $ declarations  _functionBody



type AnalMonad = SimpleFuelMonad
data Halo
  = Empty
  | Finite Offset Offset
  | Infinite

type HaloMap = M.Map IdentName Halo
type TypeMap = M.Map IdentName TExpr

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
joinHalo _Infinite = Infinite
joinHalo (Finite lo1 hi1) (Finite lo2 hi2)
  | allIsSame (map remain $ lo1++hi1++lo2++hi2) =
      (zipWith min lo1 lo2, zipWith max hi1 hi2)
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
traceHaloTransfer fact rhs lhs = lookup M.empty
  where
    ----- todo :: handle rhs shift
    rhsHalo = lookupHalo (rhs ^. identName) fact

haloRewrite :: forall m . FuelMonad m => BwdRewrite m (Insn ()) HaloMap
haloRewrite = mkBRewrite d
  where
    d :: Insn () e x -> Fact x HaloMap -> m (Maybe (Graph (Insn ()) e x))
    d _ _ = return Nothing
