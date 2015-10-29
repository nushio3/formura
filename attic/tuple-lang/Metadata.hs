{-# LANGUAGE TemplateHaskell #-}
module Metadata where

import           Control.Lens
import           Text.Trifecta


-- | The compiler metadata that provides access to the source.
newtype Metadata = Metadata {_metadataRendering :: Rendering}
instance Eq Metadata where
  a == b = True -- Metadata does not affect the derived equality of other type

instance Show Metadata where
  show = const ""

makeClassy ''Metadata

instance HasRendering Metadata where
  rendering = iso _metadataRendering Metadata
