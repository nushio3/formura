{-# LANGUAGE GeneralizedNewtypeDeriving, OverloadedStrings #-}

module Formura.MPICxx.Language where

import           Data.Monoid
import           Data.String
import qualified Data.Text as T

data CWord = RawC T.Text | TypedC T.Text T.Text
                deriving (Eq, Ord, Show, Read)
newtype CLang = CLang [CWord]
                deriving (Eq, Ord, Show, Read)

instance Monoid CLang where
  mempty = CLang []
  mappend (CLang xs) (CLang ys) = let
    go [] = []
    go [x] = [x]
    go (RawC x: RawC y: z) = go ((RawC $ x<>y) : z)
    go (x:y) = x: go y
    in CLang $ go $ xs ++ ys

instance IsString CLang where
  fromString str = CLang [RawC $ T.pack str]

rawC :: T.Text -> CLang
rawC t = CLang [RawC t]

showC :: Show a => a -> CLang
showC = fromString . show

parens :: CLang -> CLang
parens x = "(" <> x <> ")"

brackets :: CLang -> CLang
brackets x = "[" <> x <> "]"

braces :: CLang -> CLang
braces x = "{" <> x <> "}"
