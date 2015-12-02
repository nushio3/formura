module Formura.Cxx.Translate where

import           Control.Lens
import qualified Data.IntMap as G
import           Data.Monoid
import qualified Data.Text as T

import qualified Formura.Annotation as A
import           Formura.OrthotopeMachine.Graph



translate :: Graph -> T.Text
translate _ = T.pack "hello world"

manifestNodes :: Graph -> [NodeID]
manifestNodes g =
  map fst $
  filter f $
  G.toList g
  where
    f :: (NodeID, Node) -> Bool
    f = const True
