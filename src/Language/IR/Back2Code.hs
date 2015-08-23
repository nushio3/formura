{-# LANGUAGE FlexibleContexts, FlexibleInstances, GADTs, OverloadedStrings, TemplateHaskell #-}
module Language.IR.Back2Code where

import Compiler.Hoopl
import qualified Data.ByteString as BS
import Data.FileEmbed (embedFile)
import Data.Monoid
import           Data.Text.Encoding(decodeUtf8)
import qualified Data.Text as T
import qualified Data.Text.IO as T
import qualified Language.IR.Frontend as F
import Language.IR.Backend
import Text.Printf


utilityCode :: T.Text
utilityCode = decodeUtf8 $(embedFile "resource/utility.cpp")

template2DCode :: T.Text
template2DCode = decodeUtf8 $(embedFile "resource/template-2d-notb.cpp")

generate :: Function -> IO T.Text
generate func = do
  return $
    T.replace "FUNCTION_NAME" (T.pack $ _functionName func) $
    T.replace "//POINTER DECLS" (ptrDeclCode func) $
    T.replace "//BUFFER DECLS" (declCode func) $
    T.replace "//BUFFER UPDATES" (toCode func) $
    T.replace "//BUFFER SWAPS" (swapCode func) $
    template2DCode


class ToCode a where
  toCode :: a -> T.Text

instance ToCode Expr where
  toCode (Lit x) = T.pack $ show (fromRational x :: Double) ++ "f"
  toCode (Load var off) = T.pack var <> offset2Code off
  toCode (Uniop F.Neg a) = "(-(" <> toCode a <> "))"
  toCode (Binop F.Add a b) = "(" <> toCode a <> "+" <> toCode b <> ")"
  toCode (Binop F.Sub a b) = "(" <> toCode a <> "-" <> toCode b <> ")"
  toCode (Binop F.Mul a b) = "(" <> toCode a <> "*" <> toCode b <> ")"
  toCode (Binop F.Div a b) = "(" <> toCode a <> "/" <> toCode b <> ")"
  toCode (Triop F.FMA a b c) = "(" <> toCode a <> "*" <> toCode b <> "+" <> toCode c <> ")"

instance ToCode RExpr where
  toCode (RLoad var) = T.pack var <> offset2Code []

instance ToCode (Insn () e x) where
  toCode (Assign () r e) = toCode r <> "=" <> toCode e <> ";\n"

instance ToCode Function where
  toCode func = foldGraphNodes (\n code -> code <> toCode n) (_functionBody func) ""

offset2Code :: [Int] -> T.Text
offset2Code is = T.pack $ printf "[mask(j+%d)][mask(i+%d)]" (is' !! 0) (is' !! 1)
  where
    is' = is ++ repeat 0

swapCode :: Function -> T.Text
swapCode func =
  T.unlines $
  map T.pack $
  [printf "swap(%s, %s_next);" vn vn | v<- _entryDecls func, let vn = _varName v]

declCode :: Function -> T.Text
declCode func =
  T.unlines $
  map T.pack $
  [printf "%s %s[NX][NX];" vt vn
  | v <- hontize (_entryDecls func) ++ _middleDecls func
  , let vn = _varName v, let vt = _varType v]
  where
    hontize :: [VarDecl] -> [VarDecl]
    hontize vs = concat
      [ [v{_varName = vn ++ "_hontai"}, v{_varName = vn ++ "_next_hontai"}]
      | v <- vs, let vn = _varName v]

ptrDeclCode :: Function -> T.Text
ptrDeclCode func =
  T.unlines $
  map T.pack $
  [printf "%s %s = %s_hontai;" vt vn vn
  | v <- hontize (_entryDecls func)
  , let vn = _varName v, let vt = _varType v ++ "_plane_t *"]
  where
    hontize :: [VarDecl] -> [VarDecl]
    hontize vs = concat
      [ [v{_varName = vn}, v{_varName = vn ++ "_next"}]
      | v <- vs, let vn = _varName v]
