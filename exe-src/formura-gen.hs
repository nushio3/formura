{-# LANGUAGE DataKinds #-}
module Main where

import           Control.Lens
import qualified Data.Aeson as J
import qualified Data.ByteString.Char8 as BS
import qualified Data.IntMap as G
import           Data.Monoid
import qualified Data.Text as T
import qualified Data.Text.IO as T
import qualified Data.Yaml as Y
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
      P.Success prog -> genStmt prog

genStmt :: Program -> IO ()
genStmt prog = do
  omProg <- genOMProgram prog

  putStrLn "## Debug print: global environment of the simulation"
  print (omProg ^. omGlobalEnvironment)
  putStrLn ""

  putStrLn "## Debug print: simulation state"
  print (omProg ^. omStateSignature)
  putStrLn ""

  putStrLn "## Debug print: init graph"
  mapM_ pprNode $ G.toList (omProg ^. omInitGraph)
  putStrLn ""

  putStrLn "## Debug print: step graph"
  mapM_ pprNode $ G.toList (omProg ^. omStepGraph)
  putStrLn ""

  (_, _, cxxCode) <- runCompilerRight (C.translate C.defaultNumericalConfig)
                     (omProg ^. omGlobalEnvironment)
                     C.defaultTranState{C._theGraph = omProg ^. omStepGraph}
  T.putStrLn (cxxCode :: T.Text)
  T.writeFile "output.cpp" cxxCode
  BS.putStrLn $ Y.encode $ C.defaultNumericalConfig

pprNode :: (Int, OMNode) -> IO ()
pprNode (i,n) = do
  let r = case A.toMaybe (n ^. A.annotation) of
        Just Manifest -> "M"
        _             -> " "
      varName = case A.toMaybe (n ^. A.annotation) of
        Just (SourceName n1) -> n1
        _                   -> ""
  putStrLn $ unwords [r , take 4 $ varName ++ repeat ' ', show (i,n)]
