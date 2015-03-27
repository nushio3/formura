{-# LANGUAGE TemplateHaskell #-}
module Language.Formura.Tree where

import Control.Lens
import Language.Formura.Parser
import Text.Trifecta
import Text.Printf

data Tree
  = RationalLeaf {_treeMetadata :: Metadata, _treeRational :: Rational}
  | SymbolLeaf {_treeMetadata :: Metadata, _treeSymbol :: String}
  | Unary {_treeMetadata :: Metadata, _treeCar :: Tree, _treeRhs :: Tree}
  | Binary {_treeMetadata :: Metadata, _treeCar :: Tree, _treeLhs :: Tree, _treeRhs :: Tree}
makeLenses ''Tree

instance Show Tree where
  show (RationalLeaf _ r) = pprRational r
  show (SymbolLeaf _ s) = s
  show (Unary _ o r) = printf "(%s %s)" (show o) (show r)
  show (Binary _ o l r) = printf "(%s %s %s)" (show o) (show l)  (show r)

instance HasRendering Tree where
  rendering = treeMetadata . metadataRendering


-- constPropagate :: Tree -> Tree
-- constPropagate (Unary _ op )
