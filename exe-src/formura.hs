{-# LANGUAGE ImplicitParams #-}
module Main where

import           Control.Lens
import           Control.Monad
import qualified Data.ByteString.Char8 as BS
import qualified Data.IntMap as G
import           Data.Monoid
import qualified Data.Text as T
import qualified Data.Text.IO as T
import qualified Data.Yaml as Y
import           System.IO
import qualified Text.PrettyPrint.ANSI.Leijen as Ppr
import qualified Text.Trifecta as P

import qualified Formura.Annotation as A
import           Formura.Annotation.Representation
import           Formura.CommandLineOption
import           Formura.OrthotopeMachine.Graph
import           Formura.OrthotopeMachine.Translate
import qualified Formura.Parser as P
import           Formura.Compiler
import           Formura.Syntax
import qualified Formura.MPICxx.Translate as C

main :: IO ()
main = do
  opts <- getCommandLineOption
  let ?commandLineOption = opts
  mapM_ process (opts ^. inputFilenames)

process :: WithCommandLineOption => FilePath -> IO ()
process fn = do
  mprog <- P.parseFromFileEx (P.runP $ P.program <* P.eof) fn
  case mprog of
      P.Failure doc -> Ppr.displayIO stdout $ Ppr.renderPretty 0.8 80 $ doc <> Ppr.linebreak
      P.Success prog -> genMPICxx prog

genMPICxx :: WithCommandLineOption => Program -> IO ()
genMPICxx prog = do
  omProg <- genOMProgram prog

  when (?commandLineOption ^. verbose) $ do
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

  C.genCxxFiles prog omProg

pprNode :: (Int, Node) -> IO ()
pprNode (i,n) = do
  let r = case A.toMaybe (n ^. A.annotation) of
        Just Manifest -> "M"
        _             -> " "
      varName = case A.toMaybe (n ^. A.annotation) of
        Just (SourceName n1) -> n1
        _                   -> ""
  putStrLn $ unwords [r , take 4 $ varName ++ repeat ' ', show (i,n)]
