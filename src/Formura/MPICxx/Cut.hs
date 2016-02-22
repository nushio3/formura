{-# LANGUAGE DeriveDataTypeable, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, LambdaCase, MultiParamTypeClasses, MultiWayIf, TemplateHaskell, TypeSynonymInstances #-}

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
import           Data.List (sort)
import           Data.Data
import           Data.Foldable
import qualified Data.Map as M
import           Data.Monoid
import qualified Data.Sequence as Q
import qualified Data.Set as S
import           Data.Maybe
import           Text.Trifecta (failed, raiseErr)


import           Formura.Syntax(IdentName)
import           Formura.Vec
import           Formura.Geometry
import           Formura.GlobalEnvironment
import           Formura.OrthotopeMachine.Graph
import           Formura.NumericalConfig
import           Formura.Compiler



newtype MPIRank = MPIRank (Vec Int) deriving (Eq, Ord, Show, Read, Num, Data)
newtype IRank = IRank (Vec Int) deriving (Eq, Show, Read, Num, Data)

instance Ord IRank where
  (IRank (Vec xs)) `compare` (IRank (Vec ys)) = reverse xs `compare` reverse ys
  compare _ _ = error "Comparison between IRank (PureVec _) is undefined"

data ResourceT a b = ResourceStatic IdentName a | ResourceOMNode OMNodeID b
                   deriving (Eq, Ord, Show, Read, Typeable, Data)
type Resource = ResourceT () ()
type ConcreteResource = ResourceT (MPIRank, Box) (MPIRank, IRank, Box)

data RidgeID = RidgeID { _ridgeDeltaMPI :: MPIRank, _ridgeDelta :: ResourceT () (IRank, IRank)}
                   deriving (Eq, Ord, Show, Read, Typeable, Data)

type Ridge = (RidgeID, Box)

data DistributedInst
  = CommunicationRecv (MPIRank, IRank, IRank)
  | Unstage RidgeID
  | Computation (IRank, OMNodeID)
  | Stage RidgeID
  | CommunicationSend (MPIRank, IRank, IRank)
                   deriving (Eq, Ord, Show, Read, Typeable, Data)

data MPIPlan = MPIPlan
  { _planArrayAlloc :: M.Map (ResourceT () IRank) Box
  , _planRidgeAlloc :: M.Map RidgeID Box
  , _planDistributedProgram :: [DistributedInst]
  }
makeClassy ''MPIPlan

data PlanRead = PlanRead
  { _prNumericalConfig :: NumericalConfig
  , _prMMProgram :: MMProgram
   }
makeClassy ''PlanRead

instance HasMachineProgram PlanRead MMInstruction OMNodeType where
  machineProgram = prMMProgram
instance HasGlobalEnvironment PlanRead where
  globalEnvironment = omGlobalEnvironment -- via HasMachineProgram
instance HasNumericalConfig PlanRead where
  numericalConfig = prNumericalConfig



data PlanState = PlanState
  { _psSyntacticState :: CompilerSyntacticState
  , _psDistributedProgramQ :: Q.Seq DistributedInst
  , _psAlreadyIssuedInst :: S.Set DistributedInst
  }
makeClassy ''PlanState

instance HasCompilerSyntacticState PlanState where
  compilerSyntacticState = psSyntacticState

type PlanM = CompilerMonad PlanRead () PlanState

makePlan :: NumericalConfig -> MMProgram -> IO MPIPlan
makePlan nc prog = do
  let pr = PlanRead
           { _prNumericalConfig = nc
           , _prMMProgram = prog
           }
      ps = PlanState
           { _psSyntacticState = defaultCompilerSyntacticState {_compilerStage = "MPI Planning"}
           , _psDistributedProgramQ = Q.empty
           , _psAlreadyIssuedInst = S.empty
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
      mkWall x a n = let ret = boundOfAxis x a n in Orthotope (fmap fst ret) (fmap snd ret)


  forM axes $ \ x -> do
    case M.lookup x iwparam of
     Nothing -> raiseErr $ failed $ "cannot find initial_wall numerical configuration for axis: " ++ x
     Just [] -> raiseErr $ failed $ "at least 1 element is needed for initial_wall numerical configuration for axis: " ++ x
     Just ws -> return $ [mkWall x True 0] ++ map (mkWall x False) ws ++ [mkWall x True (intraShape ! x)]

evalWall :: Partition -> Int
evalWall w = case foldMap (maybeToList . touchdown) w of
  [x] -> x
  _   -> error $ "malformed wall: " ++ show w



cut :: PlanM MPIPlan
cut = do
  dim <- view dimension
  let zeroVec = Vec $ replicate dim 0

  walls0 <- initialWalls
  -- liftIO $ print (walls0 :: Walls)
  let wvs = fmap (fmap evalWall) walls0
  -- liftIO $ print (wvs :: Vec [Int])

  stepGraph <- view omStepGraph

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
      listBounds (LoadCursorStatic v _) = move (negate v) walls0
      listBounds (LoadCursor v nid) =
        let Just w_of_n = M.lookup nid wallMap
        in move (negate v) w_of_n
      listBounds _ = fmap (fmap (const (mempty :: Partition))) walls0

      wallEvolution :: M.Map OMNodeID (Vec [Int])
      wallEvolution = fmap (fmap (fmap evalWall)) wallMap

  -- liftIO $ print (wallEvolution :: M.Map OMNodeID (Vec [Int]))

  intraShape0 <- view ncIntraNodeShape

  let iRanks0 :: [IRank]
      iRanks0 =
        sort $
        map IRank $
        sequence $
        fmap (\partitions0 -> [0..length partitions0-2]) walls0

      boxAt :: IRank -> Vec [Int] -> Box
      boxAt (IRank vi) vw = Orthotope (liftVec2 (\i xs-> xs!!i) vi vw) (liftVec2 (\i xs-> xs!!(i+1)) vi vw)

      iRankMap :: M.Map OMNodeID (M.Map IRank Box)
      iRankMap = flip fmap wallEvolution $ \vi -> M.fromList
        [(ir, boxAt ir vi)| ir <- iRanks0]

      boxAssignment :: MPIRank -> IRank -> OMNodeID -> Box
      boxAssignment (MPIRank mpir) ir nid = fromJust $ do
        m <- M.lookup nid iRankMap
        ret <- M.lookup ir m
        return $ move (mpir*intraShape0) ret

      mpiRanks0 :: [MPIRank]
      mpiRanks0 =
        map MPIRank $
        (sequence :: Vec [Int] -> [Vec Int]) $
        Vec $
        replicate dim [-1,0,1]
      mpiRankOrigin :: MPIRank
      mpiRankOrigin = MPIRank $ zeroVec

      mpiBox0 :: Box
      mpiBox0 = Orthotope zeroVec intraShape0

{-
  liftIO $ forM_ (M.keys stepGraph) $ \nid -> do
    putStrLn $ "NODE: " ++ show nid
    forM_ iRanks0 $ \ir -> do
      putStrLn $ "  IR: " ++ show ir
      putStrLn $ "    " ++ show (boxAssignment mpiRankOrigin ir nid)
-}
  let supportMap :: M.Map (IRank, OMNodeID) (M.Map Resource Box)
      supportMap = M.fromList [((ir, nid), go ir nid (fromJust $ M.lookup nid stepGraph))
                              | ir <- iRanks0, nid <- M.keys stepGraph]

      go :: IRank -> OMNodeID -> MMNode -> M.Map Resource Box
      go ir nid mmNode = let
          mmInst :: MMInstruction
          mmInst = mmNode ^. nodeInst
          microInsts :: [MMInstF MMNodeID]
          microInsts = map (^. nodeInst) $ M.elems mmInst
          b0 = boxAssignment mpiRankOrigin ir nid
        in M.unionsWith (|||) (map (listSupport b0) microInsts)

      listSupport :: Box -> MMInstF MMNodeID -> M.Map Resource Box
      listSupport b0 (LoadCursorStatic v snName) = M.singleton (ResourceStatic snName ()) (move v b0)
      listSupport b0 (LoadCursor v nid) =
        M.singleton (ResourceOMNode nid ()) (move v b0)
      listSupport _ _ = M.empty

  {-
  liftIO $ forM_ iRanks0 $ \ir -> do
    putStrLn $ "IR: " ++ show ir
    forM_ (M.keys stepGraph) $ \nid -> do
      putStrLn $ "  NODE: " ++ show nid
      putStrLn $ "    " ++ show (M.lookup (ir,nid) supportMap)
-}

  let locateSources :: IRank -> (Resource, Box) -> [ConcreteResource]
      locateSources irDest (ResourceOMNode nid (),b0) =
        [ ResourceOMNode nid (mpir, ir, b01)
        | (mpir,ir,b1) <- fromJust $ M.lookup nid allPossibleSources
        , mpir /= mpiRankOrigin || ir /= irDest
        , let b01 = b0 &&& b1
        , volume b01 > 0]
      locateSources _ (ResourceStatic snName (),b0) =
        [ ResourceStatic snName (mpir, b01)
        | (mpir,b1) <- allPossibleSourcesStatic
        , mpir /= mpiRankOrigin
        , let b01 = b0 &&& b1
        , volume b01 > 0
        ]


      allPossibleSources :: M.Map OMNodeID [(MPIRank, IRank, Box)]
      allPossibleSources = M.fromList
                           [ (nid, [(mpir, ir, boxAssignment mpir ir nid)
                                   | mpir <- mpiRanks0
                                   , ir <- iRanks0])
                           | nid <- M.keys stepGraph
                           ]

      allPossibleSourcesStatic :: [(MPIRank, Box)]
      allPossibleSourcesStatic =
        [ (mpir,b)
        | mpir@(MPIRank mpiVec) <- mpiRanks0
        , let b = move (mpiVec*intraShape0) mpiBox0
        ]


  let ridgeAndBoxRequest :: M.Map (IRank, OMNodeID) [Ridge]
      ridgeAndBoxRequest = M.mapWithKey go supportMap

      ridgeRequest :: M.Map (IRank, OMNodeID) [RidgeID]
      ridgeRequest = M.map (map fst) ridgeAndBoxRequest

      go :: (IRank, OMNodeID) -> M.Map Resource Box -> [Ridge]
      go (ir, nid) rbmap =
        [ mkRidge ir crsc
        | (rsc,b0) <- M.toList rbmap
        , crsc <- locateSources ir (rsc,b0)
        ]

      mkRidge :: IRank -> ConcreteResource -> Ridge
      mkRidge _      (ResourceStatic sn (mpir, b))         = (RidgeID mpir (ResourceStatic sn ())               ,b)
      mkRidge irDest (ResourceOMNode nid (mpir, irSrc, b)) = (RidgeID mpir (ResourceOMNode nid (irSrc, irDest)) ,b)

      allRidges :: M.Map RidgeID Box
      allRidges = M.unionsWith (|||) $ map (uncurry M.singleton) $ concat $  M.elems ridgeAndBoxRequest

  let ridgeProvide :: M.Map (ResourceT () IRank) [RidgeID]
      ridgeProvide = foldr (M.unionWith (++)) M.empty $ map mkProvide $ M.keys $ allRidges

      mkProvide :: RidgeID -> M.Map (ResourceT () IRank) [RidgeID]
      mkProvide ridge0@(RidgeID dmpi drsc) = case drsc of
        ResourceStatic sn () -> M.singleton (ResourceStatic sn ()) [ridge0]
        ResourceOMNode nid (iSrc,_) -> M.singleton (ResourceOMNode nid iSrc) [ridge0]

  let insert :: DistributedInst -> PlanM ()
      insert inst = do
        psAlreadyIssuedInst %= (S.insert inst)
        psDistributedProgramQ %= (Q.|> inst)

      insertOnce :: DistributedInst -> PlanM ()
      insertOnce inst = do
        aii <- use psAlreadyIssuedInst
        when (not $ S.member inst aii) $ insert inst

  stateSignature0 <- view omStateSignature


  forM_ (M.keys stateSignature0) $ \snName -> do
      let outRidges = fromMaybe [] $ M.lookup (ResourceStatic snName ()) ridgeProvide

      forM_ outRidges $ \rdg0 -> insertOnce $ Stage rdg0


  forM_ iRanks0 $ \ir -> do
    forM_ (M.keys stepGraph) $ \nid -> do
      let inRidges  = fromMaybe [] $ M.lookup (ir,nid) ridgeRequest
          outRidges = fromMaybe [] $ M.lookup (ResourceOMNode nid ir) ridgeProvide

      forM_ inRidges $ \rdg0 -> insertOnce $ Unstage rdg0

      insert $ Computation (ir, nid)

      forM_ outRidges $ \rdg0 -> insertOnce $ Stage rdg0




  let allAllocs :: M.Map (ResourceT () IRank) Box
      allAllocs = M.unionsWith (|||) $ basicAllocStatic : basicAllocOMNode : ridgeMargins

      basicAllocStatic = M.fromList [(ResourceStatic sn (), mpiBox0) | sn <- M.keys stateSignature0]
      basicAllocOMNode = M.fromList [(ResourceOMNode nid ir, boxAssignment mpiRankOrigin ir nid)
                                    | ir <- iRanks0, nid <- M.keys stepGraph ]

      ridgeMargins = map mkRidgeMargin $ M.toList allRidges

      mkRidgeMargin :: Ridge -> M.Map (ResourceT () IRank) Box
      mkRidgeMargin (RidgeID _ drsc, box0) = case drsc of
        ResourceStatic sn () -> M.singleton (ResourceStatic sn ()) box0
        ResourceOMNode nid (_,iDest) -> M.singleton (ResourceOMNode nid iDest) box0

  dProg0 <- toList <$> use psDistributedProgramQ


  liftIO $ do
    forM_ (M.toList allAllocs) $ \(rsc, box0) -> do
      print rsc
      putStrLn $ "  " ++ show box0
    mapM_ print dProg0


  return MPIPlan
    { _planArrayAlloc = allAllocs
    , _planRidgeAlloc = allRidges
    , _planDistributedProgram = dProg0
    }
