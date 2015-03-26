module Language.Formura.Enforest where

import Control.Lens
import Data.List.Split (wordsBy)
import Data.Maybe
import qualified Data.Map as M
import qualified Data.Set as S
import Language.Formura.Parser
import System.IO
import System.IO.Unsafe
import Text.Trifecta
import Text.Trifecta.Delta (delta)
import qualified Text.PrettyPrint.ANSI.Leijen as Ppr

readProgram :: Term -> [Term]
readProgram (ListTerm _ _ ts) = map (\ts1 -> enforest ts1 [(id,0)]) $ filter (not . null) $ wordsBy isStatementDelimiter ts
readProgram t = abortCompilerAt t "top level program is not a list" [] ["list term"]


isAtom :: Term -> Bool
isAtom RationalLiteral{} = True
isAtom SymbolLiteral{} = True
isAtom _ = False

asUnaryOp :: Term -> Maybe Int
asUnaryOp SymbolLiteral{_termSymbol = s} = case s of
  "+" -> Just 6
  "-" -> Just 6
  _   -> Nothing
asUnaryOp _ = Nothing

isUnaryOp :: Term -> Bool
isUnaryOp = isJust . asUnaryOp
precUnaryOp :: Term -> Int
precUnaryOp = maybe 0 id . asUnaryOp


asBinaryOp :: Term -> Maybe Int
asBinaryOp SymbolLiteral{_termSymbol = s} = case s of
  "+" -> Just 6
  "-" -> Just 6
  "*" -> Just 7
  "/" -> Just 7
  "||" -> Just 5
  "==" -> Just 4
  ".." -> Just 5
  "," -> Just 3
  "=" -> Just 2
  "::" -> Just 2
  _ -> Nothing
asBinaryOp _ = Nothing

isBinaryOp :: Term -> Bool
isBinaryOp = isJust . asBinaryOp
precBinaryOp :: Term -> Int
precBinaryOp = maybe 0 id . asBinaryOp


mkTreeAt :: Term -> [(String, Term)] -> Term
mkTreeAt t xs = TreeTerm (t^.termMetadata) (M.fromList xs)

mkSymbolAt :: Term -> String -> Term
mkSymbolAt t xs = SymbolLiteral (t^.termMetadata) xs

enforest :: [Term] -> [(Term -> Term, Int)] -> Term
enforest [] _ = error "Cannot enforest an empty term list. "
enforest [t] [] = t
enforest (t:ts) stack | (isUnaryOp t) =
                          let f rhs = mkTreeAt t [("car",t),("rhs",rhs)]
                          in enforest ts ((f, precUnaryOp t) : stack)
enforest (t@ListTerm{_termCar="()", _termCdr=cdr}:ts) stack =
                        let inner = enforest cdr [(id,0)]
                        in enforest (inner:ts) stack
enforest (t:t2:ts) stack@((combine,prec):stackRest) | (isBinaryOp t2) =
                       let f rhs = mkTreeAt t2 [("car",t2),("lhs",t),("rhs",rhs)]
                           prec2 = precBinaryOp t2
                       in if (prec2 > prec) then enforest ts ((f,prec2):stack)
                          else enforest (combine t:t2:ts) stackRest
enforest (t@SymbolLiteral{}:t2@ListTerm{_termCar="()", _termCdr=cdr}:ts) stack
  = let args = enforest cdr [(id,0)]
        ap1 = mkTreeAt t [("car",mkSymbolAt t "call"), ("lhs", t), ("rhs", args)]
    in enforest (ap1:ts) stack
enforest (t@SymbolLiteral{}:t2@ListTerm{_termCar="[]", _termCdr=cdr}:ts) stack
  = let args = enforest cdr [(id,0)]
        ap1 = mkTreeAt t [("car",mkSymbolAt t "array-access"), ("lhs", t), ("rhs", args)]
    in enforest (ap1:ts) stack
enforest (t:ts) ((f,_):rest) = enforest (f t:ts) rest
enforest (t:t2:_) [] = abortCompilerAt t2 "unexpected redundant term" [] ["end of expression"]


abortCompilerAt :: HasRendering r => r -> String -> [String] -> [String] -> a
abortCompilerAt r0 reason0 footnotes0 expected0 =
  unsafePerformIO $ do
    Ppr.displayIO stdout $
      Ppr.renderPretty 0.8 80 $
      (explain (addCaret (delta r1) r1) (Err reason1 footnotes1 expected1)) Ppr.<> Ppr.linebreak
    error "compiler error"
  where
    r1 = r0 ^. rendering
    reason1
      | reason0 == "" = Nothing
      | otherwise     = Just $ Ppr.text reason0
    footnotes1 = map Ppr.text footnotes0
    expected1 = S.fromList expected0
