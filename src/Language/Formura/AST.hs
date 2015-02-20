{-# LANGUAGE FlexibleInstances, GeneralizedNewtypeDeriving, KindSignatures, StandaloneDeriving, TemplateHaskell, TypeFamilies, TypeOperators #-}

module Language.Formura.AST where

import           Control.Lens (makePrisms, iso, lens, Lens')
import           Data.Text (Text)
import           Text.Trifecta (Rendering, HasRendering(..))

data Meta a = Meta Metadata a

instance HasRendering (Meta a) where
  rendering = lens (\(Meta m _) -> m) (\(Meta _ a) m-> Meta m a) . rendering

newtype Metadata = Metadata {_metadataRendering :: Rendering}
instance HasRendering Metadata where
  rendering = iso _metadataRendering Metadata

type family (s :: (* -> *) -> *) & (f :: * -> *) :: *
type instance s & f = f (s f)


data VariableName (f :: * -> *) = VariableName Text
makePrisms ''VariableName

data WholeType (f :: * -> *) = WholeType Text
makePrisms ''WholeType

data Statement f = Declaration (VariableName & f) (WholeType & f)
makePrisms ''Statement

data Program f = Program {statements :: [Statement & f]}
makePrisms ''Program

type MetaProgram = Program & Meta
