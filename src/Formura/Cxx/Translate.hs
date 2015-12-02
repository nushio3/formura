{-# LANGUAGE OverloadedStrings, TemplateHaskell #-}

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
import           Formura.Syntax
import           Formura.OrthotopeMachine.Graph
import           Formura.Vec

showt :: Show a => a -> T.Text
showt = T.pack . show

paren :: T.Text -> T.Text
paren x = "(" <> x <> ")"

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


rhsCodeAt :: Vec Int -> NodeID -> TranM T.Text
rhsCodeAt cursor nid = do
  nd <- lookupNode nid
  let Node inst0 typ0 ann0 = nd
  case inst0 of
     Imm r -> return $ showt (realToFrac r :: Double)
     Uniop op a -> do
       a_code <- rhsCodeAt cursor a
       return $ paren $ T.pack op <> a_code
     Binop op a b -> do
       a_code <- rhsCodeAt cursor a
       b_code <- rhsCodeAt cursor b
       return $ paren $ b_code <> T.pack op <> b_code
     ShiftF vi a -> rhsCodeAt (cursor + vi) a
     LoadExtent i -> undefined
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
