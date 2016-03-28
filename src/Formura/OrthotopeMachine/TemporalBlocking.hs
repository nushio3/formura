module Formura.Orthotope.TemporalBlocking where

import Formura.Syntax
import Formura.OrthotopeMachine.Graph


temporalBlocking :: WithCommandLineOption => Int -> MMProgram -> MMProgram
temporalBlocking tbFoldingNumber mmprog0 = mmprog0
  where
