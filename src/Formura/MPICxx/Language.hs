{-# LANGUAGE DeriveFunctor, DeriveFoldable, DeriveTraversable, FlexibleContexts, FlexibleInstances, GeneralizedNewtypeDeriving, ImplicitParams, OverloadedStrings, TemplateHaskell, TypeSynonymInstances #-}

module Formura.MPICxx.Language where
import           Control.Lens
import           Data.Foldable(toList)
import           Data.List (intersperse)
import           Data.Monoid
import           Data.String
import           Data.String.ToString
import qualified Data.Text as T
import           Prelude hiding (show, Word, length)
import qualified Prelude
import           System.FilePath.Lens

import           Formura.CommandLineOption

data TargetLanguage = MPICxx | MPIFortran deriving(Eq,Ord,Show,Read)

targetLanguage :: WithCommandLineOption => TargetLanguage
targetLanguage = case ?commandLineOption ^. outputFilename . extension of
  ('.':'f':_)     -> MPIFortran
  _           -> MPICxx


data WordF a = Raw T.Text
             | Hole a
             | PotentialSubroutine (SrcF a)
             deriving (Eq, Ord, Show, Read, Functor, Foldable, Traversable)

data TypedHole = Typed { _holeType :: T.Text, _holeExpr :: T.Text}
             deriving (Eq, Ord, Show, Read)

type Word = WordF (TypedHole)

newtype SrcF a = Src [WordF a]
               deriving (Eq, Ord, Show, Read, Functor, Foldable, Traversable)

type Src = SrcF TypedHole

makeLenses ''TypedHole

-- instance Ord Src where
--   compare = let key :: Src -> ([T.Text], [T.Text], T.Text)
--                 key (Src xs) = (xs >>= vals , xs >>= typs, toText (Src xs))
--
--                 vals :: Word -> [T.Text]
--                 vals (Raw x) = [x]
--                 vals (Hole _ x) = []
--                 vals (PotentialSubroutine (Src xs)) = xs >>= vals
--
--                 typs :: Word -> [T.Text]
--                 typs (Raw _) = []
--                 typs (Hole t _) = [t]
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
  toText (Hole (Typed _ x)) = x
  toText (PotentialSubroutine x) = toText x
instance ToText Src where
  toText (Src xs) = mconcat $ map toText xs




length :: Src -> Int
length = T.length . toText

raw :: T.Text -> Src
raw t = Src [Raw t]

show :: Show a => a -> Src
show = fromString . Prelude.show

parameter :: Show a => T.Text -> a -> Src
parameter t x = Src [Hole (Typed t (fromString $ Prelude.show x))]

typedHole :: T.Text -> T.Text -> Src
typedHole t x = Src [Hole (Typed t x)]


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

parensTuple :: Foldable t => t Src -> Src
parensTuple = parens . intercalate ", " . toList

replace :: Src -> Src -> Src -> Src
replace src dest (Src xs) = Src $ map go xs
  where
    repT = T.replace (toText src) (toText dest)
    go (Raw x) = Raw (repT x)
    go x@(Hole _) = x
    go (PotentialSubroutine s) = PotentialSubroutine $ replace src dest s

-- | Wrap a C source as a potential subroutine
potentialSubroutine :: Src -> Src
potentialSubroutine s = Src [PotentialSubroutine s]

template :: Src -> Src
template (Src xs) = Src $ map go xs
  where
    go x@(Raw _) = x
    go (Hole (Typed t _)) = Hole (Typed t "")
    go (PotentialSubroutine s) = PotentialSubroutine $ template s


-- | Does the two code can be made into single subroutine?
isCopipe :: Src -> Src -> Bool
isCopipe x y = template x == template y


pretty :: Src -> T.Text
pretty (Src xs) = T.concat $ map go xs
  where
    go :: Word -> T.Text
    go (Raw x) = x
    go (Hole (Typed _ x)) = "<<" <> x <> ">>"
    go (PotentialSubroutine s) = pretty s
