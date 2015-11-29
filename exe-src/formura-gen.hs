{-# LANGUAGE DataKinds #-}
module Main where

import           Control.Lens
import           Data.Monoid
import           System.Environment
import           System.IO
import qualified Text.PrettyPrint.ANSI.Leijen as Ppr
import qualified Text.Trifecta as P

import           Formura.Interpreter.Eval
import qualified Formura.Parser as P
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
        mapM_ evalStmt stmts

evalStmt :: StatementF RExpr -> IO ()
evalStmt (TypeDecl _ _) = return ()
evalStmt (Subst l r) = do
  putStrLn $ show l ++ " = " ++ show r
  rv <- runIM $ eval r
  case rv of
    Left doc -> Ppr.displayIO stdout $ Ppr.renderPretty 0.8 80 $ doc <> Ppr.linebreak
    Right vt -> print vt
  putStrLn ""
