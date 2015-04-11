module Main where

import Control.Applicative
import Control.Lens
import Control.Monad
import Data.Monoid
import qualified Data.Text.IO as T
import qualified Data.Map.Strict as M
import qualified Data.Set as S
import System.Environment
import System.IO
import Text.Trifecta
import Text.Printf
import Text.PrettyPrint.ANSI.Leijen as Pretty hiding (line, (<>), (<$>), empty, integer)

import Language.Formura.Tree
import Language.Formura.Parser
import Language.Formura.Enforest



main :: IO ()
main = do
  (fileName:_ ) <- getArgs
  res <- parseFromFileEx (internalP program <* eof) fileName
  case res of
    Success ast -> do
      putStrLn "#### Tokenized Program ####"
      print ast

      let progTree :: [Tree]
          progTree = readProgram ast
      putStrLn "#### Enforested Program ####"
      mapM_ print progTree
      analyze progTree
    Failure doc -> displayIO stdout $ renderPretty 0.8 80 $ doc <> linebreak


tSepBy :: SymbolName -> Tree -> [Tree]
tSepBy n t = go t
  where
    go :: Tree -> [Tree]
    go t@Binary{_treeCar=SymbolLeaf{_treeSymbol=n}, _treeLhs=lhs, _treeRhs=rhs}
                 = tSepBy n lhs ++ tSepBy n rhs
    go t = [t]

tCarVariableName :: Tree -> SymbolName
tCarVariableName t@(RationalLeaf{}) = abortCompilerAt t "unexpected literal" [] ["variable name"]
tCarVariableName (SymbolLeaf{_treeSymbol=s}) = s
tCarVariableName t = tCarVariableName (_treeCar t)

analyze :: [Tree] -> IO ()
analyze progTree = do
  let findDecl :: Tree -> [(Tree, Tree)]
      findDecl (Binary{_treeCar=SymbolLeaf{_treeSymbol="::"}, _treeLhs=lhs, _treeRhs=rhs})
                      = [(n,lhs) | n <- tSepBy "," rhs]
      findDecl _ = []

      declTable :: M.Map SymbolName (Tree, Tree)
      declTable = M.fromList [(tCarVariableName l,(l,r))
          | (l,r) <- progTree >>= findDecl ]

  let findDef :: Tree -> [(Tree, Tree)]
      findDef (Binary{_treeCar=SymbolLeaf{_treeSymbol="="}, _treeLhs=lhs, _treeRhs=rhs})
                      = [(lhs,rhs) ]
      findDef _ = []

      defTable :: M.Map SymbolName (Tree, Tree)
      defTable = M.fromList [(tCarVariableName l,(l,r))
          | (l,r) <- progTree >>= findDef ]


  putStrLn "#### Declaration Analysis ####"
  mapM_ print $ M.toList declTable

  putStrLn "#### Definition Analysis ####"
  mapM_ print $ M.toList defTable
