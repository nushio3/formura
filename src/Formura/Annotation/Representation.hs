module Formura.Annotation.Representation where

import Formura.Syntax

data Representation = Manifest | Delay
                    deriving (Eq, Ord, Show, Read)

data SourceName = SourceName IdentName
                    deriving (Eq, Ord, Show, Read)
