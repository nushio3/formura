module Language.Formura.Enforest where

import Control.Lens
import Data.List.Split (wordsBy)
import Data.Maybe
import qualified Data.Map as M
import qualified Data.Set as S
import System.IO
import System.IO.Unsafe
import Text.Trifecta
import Text.Trifecta.Delta (delta)
import qualified Text.PrettyPrint.ANSI.Leijen as Ppr

import Language.Formura.Parser
import Language.Formura.Tree


readProgram :: Term -> [Term]
readProgram (ListTerm _ _ ts) = map (\ts1 -> enforest ts1 [(id,0)]) $ filter (not . null) $ wordsBy isStatementDelimiter ts
readProgram t = abortCompilerAt t "top level program is not a list" [] ["list term"]

readProgram2 :: Term -> [Tree]
readProgram2 (ListTerm _ _ ts) = map (\ts1 -> enforest20 ts1) $ filter (not . null) $ wordsBy isStatementDelimiter ts
readProgram2 t = abortCompilerAt t "top level program is not a list" [] ["list term"]




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




enforest20 :: [Term] -> Tree
enforest20 ts = enforest2 Nothing ts [(id,0)]

enforest2 :: Maybe Tree -> [Term] -> [(Tree -> Tree, Int)] -> Tree
enforest2 Nothing [] _ = error "Cannot enforest2 an empty term list. "
enforest2 (Just t) [] [] = t
enforest2 Nothing (RationalLiteral m x:ts) stack = enforest2 (Just $ RationalLeaf m x) ts stack

enforest2 Nothing (t@SymbolLiteral{_termSymbol=s}:ts) stack | (isUnaryOp t) =
                          let f rhs = Unary m (SymbolLeaf m s) rhs
                              m = t^.termMetadata
                          in enforest2 Nothing ts ((f, precUnaryOp t) : stack)

enforest2 Nothing (SymbolLiteral m x:ts) stack = enforest2 (Just $ SymbolLeaf m x) ts stack
enforest2 Nothing (t@ListTerm{_termCar="()", _termCdr=cdr}:ts) stack =
                        let inner = enforest20 cdr
                        in enforest2 (Just inner) ts stack

enforest2 (Just t) (t2@SymbolLiteral{_termSymbol = s}:ts) stack@((combine,prec):stackRest) | (isBinaryOp t2) =
                       let f rhs = Binary m (SymbolLeaf m s) t rhs
                           m = t2 ^. termMetadata
                           prec2 = precBinaryOp t2
                       in if (prec2 > prec) then enforest2 Nothing ts ((f,prec2):stack)
                          else enforest2 (Just $ combine t) (t2:ts) stackRest
enforest2 (Just t)  (t2@ListTerm{_termMetadata = m, _termCar="()", _termCdr=cdr}:ts) stack
  = let args = enforest20 cdr
        ap1 = Binary m (SymbolLeaf m "call") t args
    in enforest2 (Just ap1) ts stack

enforest2 (Just t) (t2@ListTerm{_termMetadata = m, _termCar="[]", _termCdr=cdr}:ts) stack
  = let args = enforest20 cdr
        ap1 = Binary m (SymbolLeaf m "array-access") t args
    in enforest2 (Just ap1) ts stack
enforest2 (Just t) ts ((f,_):rest) = enforest2 (Just $ f t) ts rest
enforest2 t (t2:_) [] = abortCompilerAt t2 "unexpected redundant term" [] ["end of expression"]
enforest2 Nothing (t2:_) _ = abortCompilerAt t2 "unexpected head term" [] ["end of expression"]

{-
enforest2 (t@SymbolLiteral{}:t2@ListTerm{_termCar="[]", _termCdr=cdr}:ts) stack
  = let args = enforest2 cdr [(id,0)]
        ap1 = mkTreeAt t [("car",mkSymbolAt t "array-access"), ("lhs", t), ("rhs", args)]
    in enforest2 (ap1:ts) stack
enforest2 (t:ts) ((f,_):rest) = enforest2 (f t:ts) rest
enforest2 (t:t2:_) [] = abortCompilerAt t2 "unexpected redundant term" [] ["end of expression"]

-}


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
