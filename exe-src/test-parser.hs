{-# LANGUAGE TemplateHaskell #-}
module Main where

import Control.Applicative
import Control.Lens
import Control.Monad
import Data.Maybe
import Data.Monoid
import qualified Data.Text.IO as T
import qualified Data.Map as M
import qualified Data.Set as S
import System.Environment
import System.IO
import Text.Trifecta
import Text.Printf
import Text.PrettyPrint.ANSI.Leijen as Pretty hiding (line, (<>), (<$>), empty, integer)

import Language.Formura.Tree
import Language.Formura.Parser
import Language.Formura.Enforest



tSepBy :: SymbolName -> Tree -> [Tree]
tSepBy n t0 = go t0
  where
    go :: Tree -> [Tree]
    go t@Binary{_treeCar=SymbolLeaf{_treeSymbol=n}, _treeLhs=lhs, _treeRhs=rhs}
                 = tSepBy n lhs ++ tSepBy n rhs
    go t = [t]

definedName :: Tree -> SymbolName
definedName t@(RationalLeaf{}) = abortCompilerAt t "unexpected literal" [] ["variable name"]
definedName (SymbolLeaf{_treeSymbol=s}) = s
definedName (Binary{_treeLhs=t}) = definedName t
definedName (Unary{_treeRhs=t}) = definedName t


data Knowledge -- A Knowledge about a symbol
 = Knowledge { _knowSpecialDeclaration :: Maybe Tree
             , _knowTypeDeclaration :: Maybe Tree
             , _knowSubstitution :: Maybe Tree}
makeClassy ''Knowledge


defaultKnowledge :: Knowledge
defaultKnowledge = Knowledge Nothing Nothing Nothing


mergeKnowledge :: Knowledge -> Knowledge -> Knowledge
mergeKnowledge (Knowledge as at ad) (Knowledge bs bt bd)
  = Knowledge (mg "special declaration" as bs)
              (mg "type declaration" at bt)
              (mg "substitution" ad bd)
  where
    mg :: String -> Maybe Tree -> Maybe Tree -> Maybe Tree
    mg what (Just a) (Just b) = abortCompilerAtRs [a ^. rendering, b ^. rendering] ("multiple " ++ what) [] []
    mg _ a b = a <|> b

specialDeclarationKeywords :: [SymbolName]
specialDeclarationKeywords = ["initial_state", "current_state", "next_state"]

isSpecialDeclarationSymbol :: Tree -> Bool
isSpecialDeclarationSymbol SymbolLeaf{_treeSymbol=s}
  | s `elem` specialDeclarationKeywords = True
  | otherwise                           = False
isSpecialDeclarationSymbol _ = False

treeToKnowledge :: Tree -> [(SymbolName, Knowledge)]
treeToKnowledge t0@Binary{_treeCar=SymbolLeaf{_treeSymbol="::"}, _treeLhs=lhs, _treeRhs=rhs}
  = let k :: Tree -> Knowledge
        k t1 = case isSpecialDeclarationSymbol lhs
                 of True -> defaultKnowledge{_knowSpecialDeclaration = Just t1}
                    False-> defaultKnowledge{_knowTypeDeclaration = Just t1}
    in [(definedName n,k (t0{_treeLhs=n, _treeRhs=lhs})) | n <- tSepBy "," rhs]
treeToKnowledge t0@Binary{_treeCar=SymbolLeaf{_treeSymbol="="}, _treeLhs=lhs, _treeRhs=rhs}
               = [(definedName lhs,defaultKnowledge{_knowSubstitution = Just t0}) ]
treeToKnowledge t = abortCompilerAt t "unknown kind of sentence" [] ["declaration", "substitution"]


analyze :: [Tree] -> IO ()
analyze progTree = do
  let kmap :: M.Map SymbolName Knowledge
      kmap = M.fromListWith mergeKnowledge $ progTree >>= treeToKnowledge
  putStrLn "#### Special Decls ####"
  mapM_ print $ map (^. _2 . knowSpecialDeclaration) $ M.toList $ kmap



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
