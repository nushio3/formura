module Language.Formura.Enforest where

import Control.Lens
import Data.List.Split (wordsBy)
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



enforest :: [Term] -> [(Term -> Term, Int)] -> Term
enforest [] [] = error "Cannot enforest an empty term list. "
enforest [t] [] = t
enforest [t] ((f,_):rest) = enforest [f t] rest

enforest (t:_) _ = abortCompilerAt t "unexpected path in enforest" [] []


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
