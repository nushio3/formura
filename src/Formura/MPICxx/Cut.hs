{-# LANGUAGE TemplateHaskell #-}

module Formura.MPICxx.Cut where

import           Control.Lens
import qualified Data.Map as M
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

cut :: PlanM MPIPlan
cut = undefined
