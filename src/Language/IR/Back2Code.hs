{-# LANGUAGE FlexibleContexts, FlexibleInstances, GADTs, OverloadedStrings #-}
module Language.IR.Back2Code where

import Compiler.Hoopl
import Data.Monoid
import qualified Data.Text as T
import qualified Data.Text.IO as T
import qualified Language.IR.Frontend as F
import Language.IR.Backend
import System.Process
import Text.Printf

generate :: FilePath -> Function -> IO ()
generate dirName func = do
  templ <- T.readFile "resource/template-2d-notb.cpp"
  system $ "mkdir -p " ++ dirName
  let mainFn = dirName ++ "/main.cpp"
  T.writeFile mainFn $
    T.replace "//BUFFER UPDATES" (toCode func) $
    T.replace "//BUFFER SWAPS" (swapCode func) $
    templ
  system $ "indent " ++ mainFn
  return ()

class ToCode a where
  toCode :: a -> T.Text

instance ToCode Expr where
  toCode (Lit x) = T.pack $ show (fromRational x :: Double)
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
  toCode func = foldGraphNodes (\n code -> code <> toCode n) (body func) ""

offset2Code :: [Int] -> T.Text
offset2Code is = T.pack $ printf "[j+%d][i+%d]" (is' !! 0) (is' !! 1)
  where
    is' = is ++ repeat 0


swapCode :: Function -> T.Text
swapCode func =
  T.unlines $
  map T.pack $
  [printf "swap(%s, %s_next);" vn vn | v<-entryDecls func, let vn = varName v]
