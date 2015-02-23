{-# LANGUAGE DeriveFunctor, FlexibleInstances, GeneralizedNewtypeDeriving, KindSignatures, StandaloneDeriving, TemplateHaskell, TypeFamilies, TypeOperators #-}

module Language.Formura.AST where

import           Control.Lens (makePrisms, iso, lens, Lens')
import           Data.Text (Text)
import           Text.Trifecta (Rendering, HasRendering(..))

-- | The compiler metadata that provides access to the source.
newtype Metadata = Metadata {_metadataRendering :: Rendering}
instance Show Metadata where
  show = const ""

-- | Add the metadata to some type @a@.
data Meta a = Meta Metadata a
  deriving (Functor)
makePrisms ''Meta

instance (Show a) => Show (Meta a) where
  show (Meta _ x) = show x

instance HasRendering (Meta a) where
  rendering = lens (\(Meta m _) -> m) (\(Meta _ a) m-> Meta m a) . rendering

instance HasRendering Metadata where
  rendering = iso _metadataRendering Metadata

-- | Apply the type constructor @s@ to the metadata functor @f@. We use this to  generate an AST component type.
type family (s :: (* -> *) -> *) & (f :: * -> *) :: *
type instance s & f = f (s f)

data VariableName (f :: * -> *) = VariableName Text
  deriving (Show)
makePrisms ''VariableName


data RationalLiteral (f :: * -> *) = IntegerLiteral Integer | FractionalLiteral Rational
  deriving (Show)
makePrisms ''RationalLiteral

data ArrayIndexPattern f
  = ArrayIndexPattern (VariableName & f)
  | ArrayIndexPatternPlus  (ArrayIndexPattern & f) (RationalLiteral & f)
  | ArrayIndexPatternMinus (ArrayIndexPattern & f) (RationalLiteral & f)
deriving instance Show (ArrayIndexPattern Meta)
makePrisms ''ArrayIndexPattern


data VariableWritePattern f = VariableWritePattern (VariableName & f) [ArrayIndexPattern & f]
deriving instance Show (VariableWritePattern Meta)
makePrisms ''VariableWritePattern


data WholeType (f :: * -> *) = WholeType Text
  deriving (Show)
makePrisms ''WholeType

data Statement f = Declaration (VariableName & f) (WholeType & f) 
                 | Substitution (VariableWritePattern & f) (VariableWritePattern & f) 
deriving instance Show (Statement Meta)
makePrisms ''Statement

data Program f = Program {statements :: [Statement & f]}
deriving instance Show (Program Meta)


makePrisms ''Program

type MetaProgram = Program & Meta
