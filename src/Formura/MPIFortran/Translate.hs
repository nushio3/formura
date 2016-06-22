{-# LANGUAGE ConstraintKinds, DeriveFunctor, DeriveFoldable, DeriveTraversable, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, ImplicitParams, LambdaCase, MultiParamTypeClasses, OverloadedStrings, PackageImports, ScopedTypeVariables, TemplateHaskell #-}

module Formura.MPIFortran.Translate where

import           Control.Applicative
import           Control.Concurrent(threadDelay)
import qualified Control.Exception as X
import           Control.Lens
import           Control.Monad
import "mtl"     Control.Monad.RWS
import           Data.Char (toUpper, isAlphaNum)
import           Data.Foldable (toList)
import           Data.Function (on)
import           Data.List (zip4, isPrefixOf, sort, groupBy, sortBy)
import qualified Data.Map as M
import           Data.Maybe
import           Data.String
import           Data.String.ToString
import qualified Data.Set as S
import qualified Data.Text as T
import qualified Data.Text.Lens as T
import qualified Data.Text.IO as T
import           System.Directory
import           System.FilePath.Lens
import           System.Process
import           Text.Trifecta (failed, raiseErr)

import           Formura.Utilities (readYamlDef, zipWithFT)
import qualified Formura.Annotation as A
import           Formura.Annotation.Boundary
import           Formura.Annotation.Representation
import           Formura.Compiler
import           Formura.CommandLineOption
import           Formura.Geometry
import           Formura.GlobalEnvironment
import           Formura.Language.Combinator (subFix)
import           Formura.NumericalConfig
import           Formura.OrthotopeMachine.Graph
import           Formura.OrthotopeMachine.TemporalBlocking
import           Formura.Syntax
import           Formura.Vec
import qualified Formura.MPICxx.Language as C
import           Formura.MPICxx.Cut hiding (cut)


genFortranFiles :: WithCommandLineOption => Program -> MMProgram -> IO ()
genFortranFiles formuraProg mmProg0 = do
  return ()
