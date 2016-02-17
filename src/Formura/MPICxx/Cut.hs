{-# LANGUAGE TemplateHaskell #-}

module Formura.MPICxx.Cut where

import Control.Lens

import Formura.Vec
import Formura.Geometry
import Formura.OrthotopeMachine.Graph

newtype MPIRank = MPIRank (Vec Int) deriving (Eq, Ord, Show, Read)

data MPIPlan = MPIPlan



cut :: MMGraph -> MPIPlan
cut = undefined
