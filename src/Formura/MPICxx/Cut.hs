{-# LANGUAGE LambdaCase, MultiWayIf, TemplateHaskell #-}

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
import           Text.Trifecta (failed, raiseErr)


import           Formura.Syntax(IdentName)
import           Formura.Vec
import           Formura.Geometry
import           Formura.GlobalEnvironment
import           Formura.OrthotopeMachine.Graph
import           Formura.NumericalConfig
import           Formura.Compiler


newtype MPIRank = MPIRank (Vec Int) deriving (Eq, Ord, Show, Read)

data MPIPlan = MPIPlan


data PlanRead = PlanRead
  { _prGlobalEnvironment :: GlobalEnvironment
  , _prNumericalConfig :: NumericalConfig
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
  let ps = PlanState
           { _psSyntacticState = defaultCompilerSyntacticState {_compilerStage = "MPI Planning"}
           }

      pr = PlanRead
           { _prGlobalEnvironment = prog ^. omGlobalEnvironment
           , _prNumericalConfig = nc
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

initialWalls :: PlanM (Vec [Partition])
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




cut :: PlanM MPIPlan
cut = do
  ws <- initialWalls
  liftIO $ print ws
  return MPIPlan
