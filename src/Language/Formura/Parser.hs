{-# LANGUAGE GeneralizedNewtypeDeriving, MultiParamTypeClasses, StandaloneDeriving, TemplateHaskell #-}
module Language.Formura.Parser where

import Control.Applicative
import Control.Lens
import Control.Monad
import Data.Char
import qualified Data.Map as M
import Data.Ratio
import Text.Trifecta as T
import Text.Trifecta.Delta

newtype P a = P {internalP :: T.Parser a}

deriving instance Alternative P
deriving instance Monad P
deriving instance Functor P
deriving instance MonadPlus P
deriving instance Applicative P
deriving instance CharParsing P
deriving instance Parsing P
deriving instance DeltaParsing P
deriving instance Errable P
deriving instance MarkParsing Delta P


-- | The compiler metadata that provides access to the source.
newtype Metadata = Metadata {_metadataRendering :: Rendering}
instance Show Metadata where
  show = const ""

makeLenses ''Metadata

instance HasRendering Metadata where
  rendering = iso _metadataRendering Metadata

metadata :: P Metadata
metadata = fmap Metadata rend
