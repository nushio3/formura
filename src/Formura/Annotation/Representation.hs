module Formura.Annotation.Representation where

data Representation = Manifest | Delay
                    deriving (Eq, Ord, Show, Read)

data SourceName = SourceName String
                    deriving (Eq, Ord, Show, Read)
