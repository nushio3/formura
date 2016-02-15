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
import           Data.Maybe
import           Data.Monoid
import qualified Data.Map as M
import qualified Data.Set as S
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
  , _isManifestNode :: OMNodeID -> Bool
  , _theGraph :: Graph OMInstruction
  , _nodeIDMap :: M.Map (OMNodeID ,Vec Int) MMNodeID
  }
makeClassy ''TranState

instance HasCompilerSyntacticState TranState where
  compilerSyntacticState = tranSyntacticState

defaultTranState :: TranState
defaultTranState = TranState
  { _tranSyntacticState = defaultCompilerSyntacticState{ _compilerStage = "manifestation"}
  , _theGraph = M.empty
  , _nodeIDMap = M.empty
  }


type TranM = CompilerMonad GlobalEnvironment () TranState


lookupNode :: OMNodeID -> TranM OMNode
lookupNode i = do
  g <- use theGraph
  case M.lookup i g of
   Nothing -> raiseErr $ failed $ "out-of-bound node reference: #" ++ show i
   Just n -> do
     case A.viewMaybe n of
        Just meta -> compilerFocus %= (meta <|>)
        Nothing -> return ()
     return n

mapNodeID :: Vec Int -> OMNodeID -> TranM MMNodeID
mapNodeID c i = do
  f <- use nodeIDMap
  case M.lookup f (c,i) of
    Just j -> return j
    Nothing -> do
      let j = fromIntegral $ M.size f
      nodeIDMap %= M.insert (c,i) j
      return j

rhsCodeAt :: Vec Int -> OMNodeID -> TranM MMInstruction
rhsCodeAt cursor nid = do
  nd <- lookupNode nid
  isM <- use isManifestNode
  case isM nid of
     True  -> do
       j <- mapNodeID cursor nid
       return $ M.singleton j (LoadCursor cursor nid)
     False -> rhsDelayedCodeAt cursor nid




rhsDelayedCodeAt :: Vec Int -> OMNodeID -> TranM MMInstruction
rhsDelayedCodeAt cursor omNodeID = do
  -- TODO: MMInst nodeID should be generated once per (cursor, nodeID), not (nodeID)

  let mk1 = M.singleton omNodeID
  (Node inst0 _ _) <- lookupNode omNodeID
  case inst0 of
     Imm r -> return $ mk1 $ Imm r
     Uniop op a -> do
       a_code <- rhsCodeAt cursor a
       return $ a_code <> (mk1 $ Uniop op a)
     Binop op a b -> do
       a_code <- rhsCodeAt cursor a
       b_code <- rhsCodeAt cursor b
       return $ a_code <> b_code <> (mk1 $ Binop op a b)
     Triop op a b c -> do
       a_code <- rhsCodeAt cursor a
       b_code <- rhsCodeAt cursor b
       c_code <- rhsCodeAt cursor c
       return $ a_code <> b_code <> c_code <> (mk1 $ Triop op a b c)
     Shift vi a -> rhsCodeAt (cursor + vi) a
     Load name -> return $ mk1 $ LoadCursorStatic cursor name
     LoadIndex i -> return $ mk1 $ LoadIndex i
     LoadExtent i -> return $ mk1 $ LoadExtent i
     Store name a -> do
       a_code <- rhsCodeAt cursor a
       return $ a_code <> (mk1 $ Store name a)
     x -> raiseErr $ failed $ "manifestation path unimplemented for keyword: " ++ show x


genMMInstruction :: OMNodeID -> TranM MMInstruction
genMMInstruction omNodeID = rhsDelayedCodeAt 0 omNodeID


manifestG :: Graph OMInstruction -> TranM (Graph MMInstruction)
manifestG omg = do
  theGraph .= omg
  let keys = M.keys omg
  manifestKeys <- fmap concat $ forM keys $ \k -> do
    nd <- lookupNode k
    return $ case A.viewMaybe nd of
      Just Manifest -> [k]
      _ -> []
  liftIO $ do
    putStrLn $ "manifest node ID: " ++ show  manifestKeys

  let isM_0 :: Int -> Bool
      isM_0 n = S.member n manifestSet
      manifestSet :: S.Set Int
      manifestSet = S.fromList manifestKeys

  isManifestNode .= isM_0

  nodeList <- fmap catMaybes $ forM manifestKeys $ \nO -> do
    case isM_0 nO of
      False -> return Nothing
      True -> do
        nodeIDMap .= M.empty

        ndInst <- genMMInstruction nO
        omNode <- lookupNode nO
        return $ Just (nO, Node ndInst (omNode ^. nodeType) (omNode ^. nodeAnnot) :: MMNode)

  return $ boundaryAnalysis $ M.fromList nodeList

manifestation :: OMProgram -> TranM MMProgram
manifestation omprog = do
  ig2 <- manifestG $ omprog ^. omInitGraph
  sg2 <- manifestG $ omprog ^. omStepGraph

  return $ MachineProgram
    { _omGlobalEnvironment = omprog ^. omGlobalEnvironment
    , _omStateSignature    = omprog ^. omStateSignature
    , _omInitGraph         = ig2
    , _omStepGraph         = sg2}

boundaryAnalysis :: Graph MMInstruction -> Graph MMInstruction
boundaryAnalysis gr =
  flip M.mapWithKey gr $
  \ k nd -> case M.lookup k bgr of
  Just b ->  nd & A.annotation %~ A.set (b <> Boundary (0,0))
  Nothing -> nd
  where
    bgr :: M.Map OMNodeID Boundary
    bgr = M.mapWithKey knb gr

    -- compute boundary for manifest node nd
    knb :: OMNodeID -> MMNode -> Boundary
    knb _ nd = mconcat $ map listBounds $ M.elems $ nd ^. nodeInst

    listBounds :: MMInstF MMNodeID -> Boundary
    listBounds (LoadCursorStatic v _)    = Boundary (v,v)
    listBounds (LoadCursor v nid) =
      let Boundary (a,b) = b_of_n
          Just b_of_n = M.lookup nid bgr
      in Boundary (a+v, b+v)
    listBounds _ = mempty


genMMProgram :: OMProgram -> IO MMProgram
genMMProgram omprog = do
  let run g = runCompilerRight g (omprog ^. globalEnvironment) defaultTranState
  (ret, _, _ ) <- run $ manifestation omprog
  return ret
