{- |
Copyright   : (c) Takayuki Muranushi, 2015
License     : MIT
Maintainer  : muranushi@gmail.com
Stability   : experimental


A module for manifestation of the Orthotope Machine: that is, an operation that removes all the delayed nodes, and replace all shift instructions with cursored-load at manifest variables.
-}

{-# LANGUAGE DataKinds, DeriveFunctor, DeriveFoldable, DeriveTraversable, FlexibleInstances, PatternSynonyms,TemplateHaskell, TypeSynonymInstances, ViewPatterns #-}

module Formura.OrthotopeMachine.Manifestation where

import Formura.OrthotopeMachine.Graph


manifestation :: OMProgram -> MMProgram
manifestation = undefined
