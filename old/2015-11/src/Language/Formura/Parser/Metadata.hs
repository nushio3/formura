{-# LANGUAGE TemplateHaskell #-}
module Language.Formura.Parser.Metadata where

import           Control.Lens
import           Text.Trifecta


-- | The compiler metadata that provides access to the source.
newtype Metadata = Metadata {_metadataRendering :: Rendering}
instance Eq Metadata where
  a == b = True -- Metadata does not affect the derived equality of other type

instance Show Metadata where
  show = const ""

makeLenses ''Metadata

instance HasRendering Metadata where
  rendering = iso _metadataRendering Metadata

metadata :: Parser Metadata
metadata = fmap Metadata rend
