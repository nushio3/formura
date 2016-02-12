{- |
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental


A module for manifestation of the Orthotope Machine: that is, an operation that removes all the delayed nodes, and replace all shift instructions with cursored-load at manifest variables.
-}

{-# LANGUAGE DataKinds, DeriveFunctor, DeriveFoldable, DeriveTraversable, FlexibleInstances, PatternSynonyms,TemplateHaskell, TypeSynonymInstances, ViewPatterns #-}

module Formura.OrthotopeMachine.Manifestation where

import           Control.Applicative
import           Control.Lens
import           Control.Monad
import           Control.Monad.IO.Class
import qualified Data.IntMap as G
import           Data.Maybe
import           Data.Monoid
import           Text.Trifecta (failed, raiseErr)


import qualified Formura.Annotation as A
import           Formura.Annotation.Boundary
import           Formura.Annotation.Representation
import           Formura.Compiler
import           Formura.GlobalEnvironment
import           Formura.OrthotopeMachine.Graph
import           Formura.Syntax
import           Formura.Vec

data TranState = TranState
  { _tranSyntacticState :: CompilerSyntacticState
  , _nodeOtoM :: Int -> Maybe Int
  , _nodeMtoO :: Int -> Int
  , _theGraph :: Graph OMInstruction
  }
makeClassy ''TranState

instance HasCompilerSyntacticState TranState where
  compilerSyntacticState = tranSyntacticState

defaultTranState :: TranState
defaultTranState = TranState
  { _tranSyntacticState = defaultCompilerSyntacticState{ _compilerStage = "manifestation"}
  , _theGraph = G.empty
  }


type TranM = CompilerMonad GlobalEnvironment () TranState


lookupNode :: NodeID -> TranM OMNode
lookupNode i = do
  g <- use theGraph
  case G.lookup i g of
   Nothing -> raiseErr $ failed $ "out-of-bound node reference: #" ++ show i
   Just n -> do
     case A.viewMaybe n of
        Just meta -> compilerFocus %= (meta <|>)
        Nothing -> return ()
     return n

rhsCodeAt :: Vec Int -> NodeID -> TranM MMInst
rhsCodeAt cursor nid = do
  nd <- lookupNode nid
  o2m <- use nodeOtoM
  case o2m nid of
     Just nM -> return $ LoadCursor cursor nM
     _  -> rhsDelayedCodeAt cursor nid


rhsDelayedCodeAt :: Vec Int -> NodeID -> TranM MMInst
rhsDelayedCodeAt cursor omNodeID = do
  (Node inst0 _ _) <- lookupNode omNodeID
  case inst0 of
     Imm r -> return $ Imm r
     Uniop op a -> do
       a_code <- rhsCodeAt cursor a
       return $ Uniop op a_code
     Binop op a b -> do
       a_code <- rhsCodeAt cursor a
       b_code <- rhsCodeAt cursor b
       return $ Binop op a_code b_code
     Triop op a b c -> do
       a_code <- rhsCodeAt cursor a
       b_code <- rhsCodeAt cursor b
       c_code <- rhsCodeAt cursor c
       return $ Triop op a_code b_code c_code
     Shift vi a -> rhsCodeAt (cursor + vi) a
     Load name -> return $ LoadCursorStatic cursor name
     LoadIndex i -> return $ LoadIndex i
     LoadExtent i -> return $ LoadExtent i
     Store name a -> do
       a_code <- rhsCodeAt cursor a
       return $ Store name a_code
     x -> raiseErr $ failed $ "manifestation path unimplemented for keyword: " ++ show x


genMMInst :: NodeID -> TranM MMInst
genMMInst omNodeID = rhsDelayedCodeAt 0 omNodeID


manifestG :: Graph OMInstruction -> TranM (Graph MMInst)
manifestG omg = do
  theGraph .= omg
  let keys = G.keys omg
  manifestKeys <- fmap concat $ forM keys $ \k -> do
    nd <- lookupNode k
    return $ case A.viewMaybe nd of
      Just Manifest -> [k :: Int]
      _ -> []
  liftIO $ do
    putStrLn $ "manifest node ID: " ++ show  manifestKeys

  let nodeOtoM_0 :: Int -> Maybe Int
      nodeOtoM_0 n = G.lookup n nodeMap
      nodeMtoO_0 :: Int -> Int
      nodeMtoO_0 n = manifestKeys !! n

      nodeMap :: G.IntMap Int
      nodeMap = G.fromList $ zip manifestKeys [0..]

  nodeOtoM .= nodeOtoM_0
  nodeMtoO .= nodeMtoO_0

  nodeList <- fmap catMaybes $ forM manifestKeys $ \nO -> do
    case nodeOtoM_0 nO of
      Nothing -> return Nothing
      Just nM -> do
        ndInst <- genMMInst nO
        omNode <- lookupNode nO
        return $ Just (nM, Node ndInst (omNode ^. nodeType) (omNode ^. nodeAnnot) :: MMNode)

  return $ boundaryAnalysis $ G.fromList nodeList

manifestation :: OMProgram -> TranM MMProgram
manifestation omprog = do
  ig2 <- manifestG $ omprog ^. omInitGraph
  sg2 <- manifestG $ omprog ^. omStepGraph

  return $ MachineProgram
    { _omGlobalEnvironment = omprog ^. omGlobalEnvironment
    , _omStateSignature    = omprog ^. omStateSignature
    , _omInitGraph         = ig2
    , _omStepGraph         = sg2}

boundaryAnalysis :: Graph MMInst -> Graph MMInst
boundaryAnalysis gr =
  flip G.mapWithKey gr $
  \ k nd -> case G.lookup k bgr of
  Just b ->  nd & A.annotation %~ A.set (b <> Boundary (0,0))
  Nothing -> nd
  where
    bgr :: G.IntMap Boundary
    bgr = G.mapWithKey knb gr

    knb :: Int -> MMNode -> Boundary
    knb k nd = listBounds $ nd ^. nodeInst
    listBounds :: MMInst -> Boundary
    listBounds (Load _)    = Boundary (0,0)
    listBounds (Store _ x) = listBounds x
    listBounds (LoadIndex _) = mempty
    listBounds (LoadExtent _) = mempty
    listBounds (Imm _)        = mempty
    listBounds (LoadCursor v nid) =
      let Boundary (a,b) = b_of_n
          Just b_of_n = G.lookup nid bgr
      in Boundary (a+v, b+v)
    listBounds (Uniop _ a) = listBounds a
    listBounds (Binop _ a b) = mconcat $ map listBounds [a, b]
    listBounds (Triop _ a b c) = mconcat $ map listBounds [a, b, c]


genMMProgram :: OMProgram -> IO MMProgram
genMMProgram omprog = do
  let run g = runCompilerRight g (omprog ^. globalEnvironment) defaultTranState
  (ret, _, _ ) <- run $ manifestation omprog
  return ret
