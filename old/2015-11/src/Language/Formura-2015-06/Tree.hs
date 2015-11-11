{-# LANGUAGE TemplateHaskell #-}
module Language.Formura.Tree where

import Control.Lens
import Data.String
import Language.Formura.Parser
import Text.Trifecta
import Text.Printf

type SymbolName = String

data Tree
  = RationalLeaf {_treeMetadata :: Metadata, _treeRational :: Rational}
  | SymbolLeaf {_treeMetadata :: Metadata, _treeSymbol :: SymbolName}
  | Unary {_treeMetadata :: Metadata, _treeCar :: Tree, _treeRhs :: Tree}
  | Binary {_treeMetadata :: Metadata, _treeCar :: Tree, _treeLhs :: Tree, _treeRhs :: Tree}
  | Function {_treeMetadata :: Metadata, _treeStmts :: [Tree]}
makeLenses ''Tree

instance Show Tree where
  show (RationalLeaf _ r) = pprRational r
  show (SymbolLeaf _ s) = s
  show (Unary _ o r) = printf "(%s %s)" (show o) (show r)
  show (Binary _ o l r) = printf "(%s %s %s)" (show o) (show l)  (show r)
  show (Function _ s) = printf "function %s" (map show s)

instance HasRendering Tree where
  rendering = treeMetadata . metadataRendering


-- constPropagate :: Tree -> Tree
-- constPropagate (Unary _ op )
