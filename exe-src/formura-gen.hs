{-# LANGUAGE DataKinds #-}
module Main where

import           Control.Lens
import           Control.Monad
import qualified Data.IntMap as G
import           Data.Monoid
import qualified Data.Text as T
import qualified Data.Text.IO as T
import           System.Environment
import           System.IO
import qualified Text.PrettyPrint.ANSI.Leijen as Ppr
import qualified Text.Trifecta as P

import qualified Formura.Annotation as A
import           Formura.Annotation.Representation
import           Formura.OrthotopeMachine.Graph
import           Formura.OrthotopeMachine.Translate
import qualified Formura.Parser as P
import           Formura.Compiler
import           Formura.Syntax
import qualified Formura.Cxx.Translate as C

main :: IO ()
main = do
  argv <- getArgs
  mapM_ process argv

process :: FilePath -> IO ()
process fn = do
  mprog <- P.parseFromFileEx (P.runP $ P.program <* P.eof) fn
  case mprog of
      P.Failure doc -> Ppr.displayIO stdout $ Ppr.renderPretty 0.8 80 $ doc <> Ppr.linebreak
      P.Success prog -> do
        let BindingF stmts = prog ^. programBinding
        mapM_ genStmt stmts

genStmt :: StatementF RExpr -> IO ()
genStmt (TypeDecl _ _) = return ()
genStmt (Subst l r) = do
  putStrLn $ show l ++ " = " ++ show r
  (_, s, _) <- runCompilerRight (genMainFunction r) defaultCodegenRead defaultCodegenState
  mapM_ pprNode $ G.toList (s ^. theGraph)
  putStrLn ""

  (ret, s, cxxCode) <- runCompilerRight C.translate () C.defaultTranState{C._theGraph = s ^. theGraph}
  T.putStrLn cxxCode
  T.writeFile "output.cpp" cxxCode

pprNode :: (Int, Node) -> IO ()
pprNode (i,n) = do
  let r = case A.toMaybe (n ^. A.annotation) of
        Just Manifest -> "M"
        _             -> " "
      varName = case A.toMaybe (n ^. A.annotation) of
        Just (SourceName n) -> n
        _                   -> ""
  putStrLn $ unwords [r , take 4 $ varName ++ repeat ' ', show (i,n)]
