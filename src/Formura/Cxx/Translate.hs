{-# LANGUAGE TemplateHaskell #-}

module Formura.Cxx.Translate where

import           Control.Applicative
import           Control.Lens
import           Control.Monad
import           Control.Monad.RWS
import qualified Data.IntMap as G
import           Data.Monoid
import qualified Data.Text as T
import           Text.Trifecta (failed, raiseErr)


import qualified Formura.Annotation as A
import           Formura.Annotation.Representation
import           Formura.Compiler
import           Formura.OrthotopeMachine.Graph
import           Formura.Vec


data TranState = TranState
  { _tranSyntacticState :: CompilerSyntacticState
  , _extent :: Vec Int }
makeClassy ''TranState

instance HasCompilerSyntacticState TranState where
  compilerSyntacticState = tranSyntacticState

defaultTranState :: TranState
defaultTranState = TranState
  { _tranSyntacticState = defaultCompilerSyntacticState{ _compilerStage = "C++ code generation"}
  , _extent = Vec [128]
  }


type TranM = CompilerMonad Graph T.Text TranState

lookupNode :: NodeID -> TranM Node
lookupNode i = do
  g <- ask
  case G.lookup i g of
   Nothing -> raiseErr $ failed $ "out-of-bound node reference: #" ++ show i
   Just n -> do
     case A.viewMaybe n of
        Just meta -> compilerFocus %= (meta <|>)
        Nothing -> return ()
     return n


translate :: TranM ()
translate = tell $  T.pack "cout << \"hello world\" << endl;"

manifestNodes :: Graph -> [NodeID]
manifestNodes g =
  map fst $
  filter f $
  G.toList g
  where
    f :: (NodeID, Node) -> Bool
    f (_, nd) = case A.viewMaybe nd of
      Just Manifest -> True
      _             -> False
