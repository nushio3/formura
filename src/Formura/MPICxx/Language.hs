{-# LANGUAGE GeneralizedNewtypeDeriving, OverloadedStrings, TemplateHaskell #-}

module Formura.MPICxx.Language where

import           Control.Lens
import           Data.Monoid
import           Data.String
import           Data.String.ToString
import qualified Data.Text as T

data CWord = RawC {_cValue :: T.Text} | TypedC { _cType :: T.Text, _cValue :: T.Text}
                deriving (Eq, Ord, Show, Read)

makeLenses ''CWord

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

instance ToString CWord where
  toString x = toString $ x ^.cValue

instance ToString CLang where
  toString (CLang xs) = concat $ map toString xs

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
