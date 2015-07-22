{-# LANGUAGE GADTs, RankNTypes, RecordWildCards #-}
module Language.IR.Front2Back where

import           Compiler.Hoopl
import           Control.Lens
import           Language.IR.Frontend as F
import qualified Language.IR.Backend  as B

translateInsn :: F.Insn a e x -> B.Insn a e x
translateInsn (Declare _ _ ) = error "TODO: translation of declare"
translateInsn (Assign a r l) = B.Assign a `uncurry` translateAssign r l

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
               B._functionBody = mapGraph translateInsn _functionBody
             }
  where
    toDecl :: IdentName -> B.VarDecl
    toDecl n = B.VarDecl { B._varType = "float", B._varHalo = ([0,0], [0,0]), B._varName = n}

    midVars = foldGraphNodes collectRHS _functionBody []

    collectRHS :: F.Insn a e x -> [IdentName] -> [IdentName]
    collectRHS (Assign _ r _ ) xs = fst (rogo r) :xs
    collectRHS _ xs = xs
