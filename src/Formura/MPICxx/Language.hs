{-# LANGUAGE GeneralizedNewtypeDeriving, OverloadedStrings #-}

module Formura.MPICxx.Language where

import           Data.String

data CWord = RawC T.Text | TypedC T.Text T.Text
                deriving (Eq, Ord, Show, Read)
newtype CLang = CLang [CWord]
                deriving (Eq, Ord, Show, Read, Monoid)

instance IsString CLang where
  fromString str = CLang [RawC $ T.pack str]
