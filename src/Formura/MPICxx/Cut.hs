{-# LANGUAGE GeneralizedNewtypeDeriving, LambdaCase, MultiWayIf, TemplateHaskell #-}

{-

　  ＿＿＿＿_＿＿＿＿
  ／＼／＼／ ＼／＼／＼
／＼／＼／＼ ／＼／＼／＼
＼　\ 　\   |　 /　 /  ／
　＼ \　|\  |  /|  / ／
　　＼\ | \ | / | /／
　　　＼|  \|/  |／
　　　  ＼  |  ／
　　　    ＼|／

-}

module Formura.MPICxx.Cut where

import           Algebra.Lattice.Levitated
import           Control.Lens
import           Control.Monad
import           Control.Monad.IO.Class
import qualified Data.Map as M
import           Data.Maybe
import           Text.Trifecta (failed, raiseErr)


import           Formura.Syntax(IdentName)
import           Formura.Vec
import           Formura.Geometry
import           Formura.GlobalEnvironment
import           Formura.OrthotopeMachine.Graph
import           Formura.NumericalConfig
import           Formura.Compiler


newtype MPIRank = MPIRank (Vec Int) deriving (Eq, Ord, Show, Read, Num)
newtype IRank = IRank (Vec Int) deriving (Eq, Show, Read, Num)

instance Ord IRank where
  (IRank (Vec xs)) `compare` (IRank (Vec ys)) = reverse xs `compare` reverse ys
  compare _ _ = error "Comparison between IRank (PureVec _) is undefined"


data MPIPlan = MPIPlan


data PlanRead = PlanRead
  { _prGlobalEnvironment :: GlobalEnvironment
  , _prNumericalConfig :: NumericalConfig
  , _prStepGraph :: MMGraph
   }
makeClassy ''PlanRead

instance HasGlobalEnvironment PlanRead where
  globalEnvironment = prGlobalEnvironment
instance HasNumericalConfig PlanRead where
  numericalConfig = prNumericalConfig


data PlanState = PlanState
  { _psSyntacticState :: CompilerSyntacticState
  }
makeClassy ''PlanState

instance HasCompilerSyntacticState PlanState where
  compilerSyntacticState = psSyntacticState

type PlanM = CompilerMonad PlanRead () PlanState

makePlan :: NumericalConfig -> MMProgram -> IO MPIPlan
makePlan nc prog = do
  let pr = PlanRead
           { _prGlobalEnvironment = prog ^. omGlobalEnvironment
           , _prNumericalConfig = nc
           , _prStepGraph = prog ^. omStepGraph
           }
      ps = PlanState
           { _psSyntacticState = defaultCompilerSyntacticState {_compilerStage = "MPI Planning"}
           }



  (ret, _, _) <- runCompilerRight cut pr ps
  return ret

getVecAccessor :: PlanM (Vec a -> IdentName -> a)
getVecAccessor = do
  Vec xs <- view axesNames
  let indmap = zip xs [0..]

      go (PureVec y) _ = y
      go (Vec ys) x' = let Just i = lookup x' indmap in ys!!i
  return go

type Walls = Vec [Partition]


initialWalls :: PlanM Walls
initialWalls = do
  axes <- view axesNames
  iwparam <- view ncInitialWalls
  intraShape <- view ncIntraNodeShape
  (!) <- getVecAccessor

  let boundOfAxis :: String -> Bool -> Int -> Vec (Levitated Int, Levitated Int)
      boundOfAxis x ascending n = flip fmap axes $ \y ->
        if | x == y && ascending -> (Levitate n, Bottom)
           | x == y              -> (Top       , Levitate n)
           | otherwise           -> (Top       , Bottom)
      mkWall :: String -> Bool -> Int -> Partition
      mkWall x a n = let ret = boundOfAxis x a n in Box (fmap fst ret) (fmap snd ret)


  forM axes $ \ x -> do
    case M.lookup x iwparam of
     Nothing -> raiseErr $ failed $ "cannot find initial_wall numerical configuration for axis: " ++ x
     Just [] -> raiseErr $ failed $ "at least 1 element is needed for initial_wall numerical configuration for axis: " ++ x
     Just ws -> return $ [mkWall x True 0] ++ map (mkWall x False) ws ++ [mkWall x True (intraShape ! x)]

evalWall :: Partition -> PlanM Int
evalWall w = case foldMap (maybeToList . touchdown) w of
  [x] -> return x
  _   -> raiseErr $ failed $ "malformed wall: " ++ show w




cut :: PlanM MPIPlan
cut = do
  ws0 <- initialWalls
  -- liftIO $ print ws0

  wvs <- mapM (mapM evalWall) ws0

  -- liftIO $ print (wvs :: Vec [Int])
  stepGraph <- view prStepGraph

  let wallMap :: M.Map OMNodeID Walls
      wallMap = M.mapWithKey go stepGraph

      go :: OMNodeID -> MMNode -> Walls
      go i mmNode = let
          mmInst :: MMInstruction
          mmInst = mmNode ^. nodeInst
          microInsts :: [MMInstF MMNodeID]
          microInsts = map (^. nodeInst) $ M.elems mmInst
        in foldr1 (&&&) (map listBounds microInsts)

      listBounds :: MMInstF MMNodeID -> Walls
      listBounds (LoadCursorStatic v _) = move (negate v) ws0
      listBounds (LoadCursor v nid) =
        let Just w_of_n = M.lookup nid wallMap
        in move (negate v) w_of_n
      listBounds _ = fmap (fmap (const (mempty :: Partition))) ws0


  wallEvolution <- traverse (mapM (mapM evalWall)) wallMap

{-
  let
      go :: (OMNodeID, MMNode) -> IO ()
      go (i, mmNode) = let
          mmInst :: MMInstruction
          mmInst = mmNode ^. nodeInst
          microInsts :: [MMInstF MMNodeID]
          microInsts = map (^. nodeInst) $ M.elems mmInst
        in forM_ microInsts $ \mi -> do
            print $ (mi, listBounds mi)

  liftIO $ mapM_ go (M.toList stepGraph)

  forM_ (M.toList wallEvolution) $ \(nd, ws) -> liftIO $ do
    putStrLn $ "NODE: " ++ show nd
    putStrLn $ show ws
--}
  return MPIPlan
