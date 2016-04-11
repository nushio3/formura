{- |
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental


A module for manifestation of the Orthotope Machine: that is, an operation that removes all the delayed nodes, and replace all shift instructions with cursored-load at manifest variables.
-}

{-# LANGUAGE DataKinds, DeriveFunctor, DeriveFoldable, DeriveTraversable, FlexibleInstances, ImplicitParams, PatternSynonyms,TemplateHaskell, TypeSynonymInstances, ViewPatterns #-}

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
import           Formura.CommandLineOption
import           Formura.GlobalEnvironment
import           Formura.NumericalConfig
import           Formura.OrthotopeMachine.Graph
import           Formura.Syntax
import           Formura.Vec

data TranState = TranState
  { _tranSyntacticState :: CompilerSyntacticState
  , _isManifestNode :: OMNodeID -> Bool
  , _theGraph :: OMGraph
  , _theMMInstruction :: MMInstruction
  , _nodeIDMap :: M.Map (Vec Int, OMNodeID) MMNodeID
  }
makeClassy ''TranState

instance HasCompilerSyntacticState TranState where
  compilerSyntacticState = tranSyntacticState

revmapMMInstruction :: Getter TranState (M.Map (Node MicroInstruction MicroNodeType) MMNodeID)
revmapMMInstruction = theMMInstruction . (to $ M.fromList . map (\(k,v) -> (v,k)) . M.toList)

defaultTranState :: TranState
defaultTranState = TranState
  { _tranSyntacticState = defaultCompilerSyntacticState{ _compilerStage = "manifestation"}
  , _theGraph = M.empty
  , _theMMInstruction = M.empty
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
  case M.lookup (c,i) f of
    Just j -> return j
    Nothing -> do
      let j = fromIntegral $ M.size f
      nodeIDMap %= M.insert (c,i) j
      return j

-- | convert a OMNodeType to MicroNodeType
toMicroType :: OMNodeType -> TranM MicroNodeType
toMicroType (GridType _ x) = toMicroType x
toMicroType (ElemType x) = return $ ElemType x
toMicroType x = raiseErr $ failed $ "Top type encountered while manifestation"

-- | insert a single subgraph instruction into current MMInstruction
insertMM :: Vec Int -> OMNodeID -> MMInstF MMNodeID -> TranM MMNodeID
insertMM c i inst = do
  j <- mapNodeID c i -- lookup for already inserted nodes
  omNode <- lookupNode i
  typ2 <- toMicroType $ omNode ^. nodeType
  let nd = Node inst typ2 (omNode ^. nodeAnnot & A.set (MMLocation i c))
  theMMInstruction %= M.insert j nd
  return j

-- | generate code that returns the RHS of current (cursor,nid)
rhsCodeAt :: Vec Int -> OMNodeID -> TranM MMNodeID
rhsCodeAt cursor nid = do
  nd <- lookupNode nid
  isM <- use isManifestNode
  case isM nid of
     True  -> do
       insertMM cursor nid (LoadCursor cursor nid)
     False -> rhsDelayedCodeAt cursor nid

-- | generate code that calculates the RHS of current (cursor,nid)
rhsDelayedCodeAt :: Vec Int -> OMNodeID -> TranM MMNodeID
rhsDelayedCodeAt cursor omNodeID = do
  let ins = insertMM cursor omNodeID
  (Node inst0 _ _) <- lookupNode omNodeID
  case inst0 of
     Imm r -> ins $ Imm r
     Uniop op a -> do
       ja <- rhsCodeAt cursor a
       ins $ Uniop op ja
     Binop op a b -> do
       ja <- rhsCodeAt cursor a
       jb <- rhsCodeAt cursor b
       ins $ Binop op ja jb
     Triop op a b c -> do
       ja <- rhsCodeAt cursor a
       jb <- rhsCodeAt cursor b
       jc <- rhsCodeAt cursor c
       ins $ Triop op ja jb jc
     Naryop op xs -> do
       jxs <- mapM (rhsCodeAt cursor) xs
       ins $ Naryop op jxs
     Shift vi a -> rhsCodeAt (cursor + vi) a
     Load name -> ins $ LoadCursorStatic cursor name
     LoadIndex i -> ins $ LoadIndex i
     LoadExtent i -> ins $ LoadExtent i
     Store name a -> do
       ja <- rhsCodeAt cursor a
       ins $ Store name ja
     x -> raiseErr $ failed $ "manifestation path unimplemented for keyword: " ++ show x


genMMInstruction :: OMNodeID -> TranM ()
genMMInstruction omNodeID = do
  nc <- view envNumericalConfig
  let nbux = nbuSize "x" nc
      nbuy = nbuSize "y" nc
  sequence_ [rhsDelayedCodeAt (Vec [x,y,0]) omNodeID
            | x <- [0..nbux-1]
            , y <- [0..nbuy-1]]
  return ()


manifestG :: WithCommandLineOption => OMGraph -> TranM MMGraph
manifestG omg = do
  theGraph .= omg
  let keys = M.keys omg
  manifestKeys <- fmap concat $ forM keys $ \k -> do
    nd <- lookupNode k
    return $ case A.viewMaybe nd of
      Just Manifest -> [k]
      _ -> []
  when (?commandLineOption ^. verbose) $ liftIO $ do
    putStrLn $ "manifest node ID: " ++ show  manifestKeys

  let isM_0 :: OMNodeID -> Bool
      isM_0 n = S.member n manifestSet
      manifestSet :: S.Set OMNodeID
      manifestSet = S.fromList manifestKeys

  isManifestNode .= isM_0

  nodeList <- fmap catMaybes $ forM manifestKeys $ \nO -> do
    case isM_0 nO of
      False -> return Nothing
      True -> do
        nodeIDMap .= M.empty
        theMMInstruction .= M.empty

        omNode <- lookupNode nO
        genMMInstruction nO
        ndInst <- use theMMInstruction

        return $ Just (nO, Node ndInst (omNode ^. nodeType) (omNode ^. nodeAnnot) :: MMNode)

  return $ boundaryAnalysis $ M.fromList nodeList

manifestation :: WithCommandLineOption => OMProgram -> TranM MMProgram
manifestation omprog = do
  ig2 <- manifestG $ omprog ^. omInitGraph
  sg2 <- manifestG $ omprog ^. omStepGraph

  return $ MachineProgram
    { _omGlobalEnvironment = omprog ^. omGlobalEnvironment
    , _omStateSignature    = omprog ^. omStateSignature
    , _omInitGraph         = ig2
    , _omStepGraph         = sg2}

boundaryAnalysis :: MMGraph -> MMGraph
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
    knb _ nd = mconcat [ listBounds $ microNode ^. nodeInst |
      microNode <- M.elems $ nd ^. nodeInst]


    listBounds :: MMInstF MMNodeID -> Boundary
    listBounds (LoadCursorStatic v _) = Boundary (-v,-v)
    listBounds (LoadCursor v nid) =
      let Boundary (a,b) = b_of_n
          Just b_of_n = M.lookup nid bgr
      in Boundary (a-v, b-v)
    listBounds _ = mempty


genMMProgram :: WithCommandLineOption => OMProgram -> IO MMProgram
genMMProgram omprog = do
  let run g = runCompilerRight g (omprog ^. globalEnvironment) defaultTranState
  (ret, _, _ ) <- run $ manifestation omprog
  return ret
