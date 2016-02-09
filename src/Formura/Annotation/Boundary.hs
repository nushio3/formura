module Formura.Annotation.Boundary where

import Formura.Vec

newtype Boundary = Boundary (Vec Int, Vec Int)
                 deriving (Eq, Ord, Show, Read)
