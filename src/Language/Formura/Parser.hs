{-# LANGUAGE GeneralizedNewtypeDeriving, TypeFamilies #-}
{- |
Module      :  Language.Formura.Parser
Description :  Syntax instance for Trifecta parser
Copyright   :  (c) Takayuki Muranushi
License     :  MIT

Maintainer  :  Takayuki Muranushi <muranushi@gmail.com>
Stability   :  experimental

Provides a SyntaxF instance for Trifecta parser.
-}


module Language.Formura.Parser (
    WrappedParser,
    getParser,
    getParser_
    ) where

import           Control.Arrow (Kleisli(..), Arrow(..))
import           Control.Category
import           Control.Category.Structures
import           Control.Monad
import           Control.SIArrow
import qualified Text.Trifecta as Δ
import           Data.Scientific (fromFloatDigits)
import           Data.Syntax
import           Data.Syntax.Char
import           Data.Text (Text)
import qualified Data.Text as Text
import           Data.ByteString (ByteString)
import qualified Data.Vector as V
import qualified Data.Vector.Unboxed as VU
import           Prelude hiding (id, (.))

import           Language.Formura.AST
import           Language.Formura.Syntax.Combinator

-- | A wrapped 'Data.Attoparsec.Text.Parser'.
newtype WrappedParser a b = Wrapped (Kleisli Δ.Parser a b)
    deriving (Arrow, Category, Products, Coproducts, CatPlus, SIArrow)



wrap :: Δ.Parser b -> WrappedParser a b
wrap = Wrapped . Kleisli . const

unwrap :: WrappedParser a b -> a -> Δ.Parser b
unwrap (Wrapped f) = runKleisli f

instance Syntax WrappedParser where
    type Seq WrappedParser = Text
    anyChar = wrap Δ.anyChar
    char = wrap . void . Δ.char
    notChar = wrap . Δ.notChar
    satisfy = wrap . Δ.satisfy
    string = wrap . void . (Δ.string . Text.unpack)
    {-
    take = wrap . Δ.count
    vecN n f = wrap $ V.replicateM n $ unwrap f ()
    ivecN n f = wrap $ V.generateM n $ fmap snd . unwrap f
    uvecN n f = wrap $ VU.replicateM n $ unwrap f ()
    uivecN n f = wrap $ VU.generateM n $ fmap snd . unwrap f
-}

instance Isolable WrappedParser where
--    isolate p = Wrapped $ Kleisli $ either fail return . Δ.parseString (unwrap p ()) (error "no delta") . (Text.unpack)
  isolate = error "no isolate"

instance SyntaxChar WrappedParser
instance SyntaxF WrappedParser where
  metadata = wrap $ (fmap Metadata  Δ.rend)
  try s = Wrapped $ Kleisli $ \a ->  Δ.try (unwrap s a)

-- | Extracts the parser.
getParser :: WrappedParser a b -> a -> Δ.Parser b
getParser (Wrapped (Kleisli f)) = f

-- | Extracts the parser.
getParser_ :: WrappedParser () b -> Δ.Parser b
getParser_ (Wrapped (Kleisli f)) = f ()
