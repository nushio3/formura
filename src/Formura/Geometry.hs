{-# LANGUAGE FlexibleContexts, FlexibleInstances, FunctionalDependencies, MultiParamTypeClasses, PackageImports, TypeFamilies #-}

module Formura.Geometry where

import Control.Monad.IO.Class ()
import "monads-tf" Control.Monad.Reader
import Formura.GlobalEnvironment
import Formura.Vec
import Data.SBV

type SInt = SInt32
type Pt = Vec SInt

class (HasGlobalEnvironment (EnvType m), MonadReader m, MonadIO m) => MonadGeometry r m | m -> r

newtype Body = Body (Pt -> SBool)

data Orthotope = Vec (Int,Int)

newtype Compound = Compound [Orthotope]
