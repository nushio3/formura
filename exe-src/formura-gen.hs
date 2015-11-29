{-# LANGUAGE DataKinds #-}
module Main where

import           Control.Lens
import           Control.Monad
import qualified Data.IntMap as G
import           Data.Monoid
import           System.Environment
import           System.IO
import qualified Text.PrettyPrint.ANSI.Leijen as Ppr
import qualified Text.Trifecta as P

import           Formura.OrthotopeMachine.CodeGen
import qualified Formura.Parser as P
import           Formura.Compiler
import           Formura.Syntax

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
  (ret, s, _) <- runCompiler (genMainFunction r) defaultCodeGenRead defaultCodeGenState
  case ret of
    Left doc -> Ppr.displayIO stdout $ Ppr.renderPretty 0.8 80 $ doc <> Ppr.linebreak
    Right () -> do
      mapM_ print $ G.toList (s ^. theGraph)
  putStrLn ""
