{-# LANGUAGE FlexibleInstances, GeneralizedNewtypeDeriving, KindSignatures, StandaloneDeriving, TemplateHaskell, TypeFamilies, TypeOperators #-}

module Language.Formura.AST where

import           Control.Lens (makePrisms, iso, lens, Lens')
import           Data.Text (Text)
import           Text.Trifecta (Rendering, HasRendering(..))

data Meta a = Meta Metadata a
instance (Show a) => Show (Meta a) where
  show (Meta _ x) = show x

instance HasRendering (Meta a) where
  rendering = lens (\(Meta m _) -> m) (\(Meta _ a) m-> Meta m a) . rendering

newtype Metadata = Metadata {_metadataRendering :: Rendering}
instance Show Metadata where
  show = const ""

instance HasRendering Metadata where
  rendering = iso _metadataRendering Metadata

type family (s :: (* -> *) -> *) & (f :: * -> *) :: *
type instance s & f = f (s f)


data VariableName (f :: * -> *) = VariableName Text
  deriving (Show)

makePrisms ''VariableName

data WholeType (f :: * -> *) = WholeType Text
  deriving (Show)

makePrisms ''WholeType

data Statement f = Declaration (VariableName & f) (WholeType & f)
deriving instance Show (Statement Meta)

makePrisms ''Statement

data Program f = Program {statements :: [Statement & f]}
deriving instance Show (Program Meta)


makePrisms ''Program

type MetaProgram = Program & Meta
