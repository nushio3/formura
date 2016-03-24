{-# LANGUAGE GeneralizedNewtypeDeriving, OverloadedStrings, TemplateHaskell #-}

module Formura.MPICxx.Language where

import           Control.Lens
import           Data.Function (on)
import           Data.List (intersperse)
import           Data.Monoid
import           Data.String
import           Data.String.ToString
import qualified Data.Text as T
import           Prelude hiding (show, Word, length)
import qualified Prelude

data Word = Raw {_cValue :: T.Text}
          | Typed { _cType :: T.Text, _cValue :: T.Text}
          | PotentialSubroutine { _cSrc :: Src}
                deriving (Eq, Ord, Show, Read)

newtype Src = Src [Word]
                deriving (Eq, Ord, Show, Read)

-- instance Ord Src where
--   compare = let key :: Src -> ([T.Text], [T.Text], T.Text)
--                 key (Src xs) = (xs >>= vals , xs >>= typs, toText (Src xs))
--
--                 vals :: Word -> [T.Text]
--                 vals (Raw x) = [x]
--                 vals (Typed _ x) = []
--                 vals (PotentialSubroutine (Src xs)) = xs >>= vals
--
--                 typs :: Word -> [T.Text]
--                 typs (Raw _) = []
--                 typs (Typed t _) = [t]
--                 typs (PotentialSubroutine (Src xs)) = xs >>= typs
--
--             in compare `on` key
--

instance Monoid Src where
  mempty = Src []
  mappend (Src xs) (Src ys) = let -- it
    go [] = [] -- let it
    go [x] = [x] -- I am one element list
    go (Raw x: Raw y: z) = go ((Raw $ x<>y) : z)
    go (x:y) = x: go y
    _ = error "never bothered me anyway"
    in Src $ go $ xs ++ ys

instance IsString Src where
  fromString str = Src [Raw $ T.pack str]

instance ToString Word where
  toString x = toString $ toText x

instance ToString Src where
  toString (Src xs) = concat $ map toString xs

class ToText a where
  toText :: a -> T.Text

instance ToText Word where
  toText (Raw x) = x
  toText (Typed _ x) = x
  toText (PotentialSubroutine x) = toText x
instance ToText Src where
  toText (Src xs) = mconcat $ map toText xs

makeLenses ''Word



length :: Src -> Int
length = T.length . toText

raw :: T.Text -> Src
raw t = Src [Raw t]

show :: Show a => a -> Src
show = fromString . Prelude.show

parameter :: Show a => T.Text -> a -> Src
parameter t x = Src [Typed t (fromString $ Prelude.show x)]

parens :: Src -> Src
parens x = "(" <> x <> ")"

brackets :: Src -> Src
brackets x = "[" <> x <> "]"

braces :: Src -> Src
braces x = "{" <> x <> "}"

unwords :: [Src] -> Src
unwords = mconcat . intersperse " "

unlines :: [Src] -> Src
unlines = mconcat . map (<> "\n")

intercalate :: Src -> [Src] -> Src
intercalate x ys = mconcat $ intersperse x ys

-- | Wrap a C source as a potential subroutine
potentialSubroutine :: Src -> Src
potentialSubroutine s = Src [PotentialSubroutine s]

template :: Src -> Src
template (Src xs) = Src $ map go xs
  where
    go x@(Raw _) = x
    go (Typed t _) = Typed t ""
    go (PotentialSubroutine s) = PotentialSubroutine $ template s


-- | Does the two code can be made into single subroutine?
isCopipe :: Src -> Src -> Bool
isCopipe x y = template x == template y


pretty :: Src -> T.Text
pretty (Src xs) = T.concat $ map go xs
  where
    go :: Word -> T.Text
    go (Raw x) = x
    go (Typed _ x) = "<<" <> x <> ">>"
    go (PotentialSubroutine s) = pretty s
