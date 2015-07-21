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
    bl = B.Load rident (map floor roffset)

    (rident, roffset) = rogo r

    rogo :: RExpr -> (IdentName, Offset)
    rogo (RLoad i)    = (i, replicate dimension 0)
    rogo (RShift o x) = rogo x & _2 %~ zipWith (+) o

translateFunction :: F.Function -> B.Function
translateFunction Function{..} =
  B.Function { B._functionName = _functionName,
               B._entryDecls = [],
               B._middleDecls = [],
               B._functionBody = mapGraph translateInsn _functionBody
             }
