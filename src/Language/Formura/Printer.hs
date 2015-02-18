{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{- |
Module      :  Language.Formura.Printer
Description :  Prints to a Text Builder using strict Text as the sequence.
Copyright   :  (c) Paweł Nowak
License     :  MIT

Maintainer  :  Paweł Nowak <pawel834@gmail.com>
Stability   :  experimental
-}
module Language.Formura.Printer (
    Printer,
    runPrinter,
    runPrinter_,
    printText
    )
    where

import           Control.Arrow (Kleisli(..), Arrow)
import           Control.Applicative
import           Control.Category
import           Control.Category.Structures
import           Control.Monad
import           Control.SIArrow
import           Data.Bifunctor.Apply
import           Data.Monoid hiding (getDual, Dual)
import           Data.Semigroupoid.Dual
import           Data.Syntax
import           Data.Syntax.Char
import           Data.Text (Text)
import qualified Data.Text as T
import           Data.Text.Lazy (toStrict)
import           Data.Text.Lazy.Builder as B
import qualified Data.Text.Lazy.Builder.Int as B
import qualified Data.Text.Lazy.Builder.RealFloat as B
import qualified Data.Text.Lazy.Builder.Scientific as B
import qualified Data.Vector as V
import qualified Data.Vector.Unboxed as VU
import           Prelude hiding (id, (.))

import Language.Formura.Syntax.Combinator

-- | A writer monad combined with Either String.
newtype Consumer m a = Consumer { runConsumer :: Either String (m, a) }
    deriving (Functor)


instance Monoid m => Applicative (Consumer m) where
    pure x = Consumer $ Right (mempty, x)
    f <*> x = Consumer $ bilift2 (flip (<>)) ($) <$> runConsumer f <*> runConsumer x

instance Monoid m => Alternative (Consumer m) where
    empty = Consumer $ Left "empty"
    f <|> g = Consumer $ case runConsumer f of
                           Left _ -> case runConsumer g of
                                       Left e2 -> Left e2
                                       Right x -> Right x
                           Right x -> Right x

instance Monoid m => Monad (Consumer m) where
    return = pure
    m >>= f = Consumer $ do
        (m1, x) <- runConsumer m
        (m2, y) <- runConsumer (f x)
        return (m2 <> m1, y)
    fail = Consumer . Left

instance Monoid m => MonadPlus (Consumer m) where
    mzero = empty
    mplus = (<|>)

-- | Prints a value to a Text Builder using a syntax description.
newtype Printer a b = Printer { unPrinter :: Dual (Kleisli (Consumer Builder)) a b }
    deriving (Category, Products, Coproducts, CatPlus, SIArrow)

wrap :: (b -> Either String Builder) -> Printer () b
wrap f = Printer $ Dual $ Kleisli $ (Consumer . fmap (, ())) . f

unwrap :: Printer a b -> b -> Consumer Builder a
unwrap = runKleisli . getDual . unPrinter

instance Syntax Printer where
    type Seq Printer = Text
    anyChar = wrap $ Right . singleton
    take n = wrap $ Right . fromText . T.take n
    takeWhile p = wrap $ Right . fromText . T.takeWhile p
    takeWhile1 p = wrap $ Right . fromText <=< notNull . T.takeWhile p
      where notNull t | T.null t  = Left "takeWhile1 failed"
                      | otherwise = Right t
    takeTill1 p = wrap $ Right . fromText <=< notNull . T.takeWhile (not . p)
      where notNull t | T.null t  = Left "takeTill1 failed"
                      | otherwise = Right t
    vecN n e = wrap $ \v -> if V.length v == n
                               then fmap fst $ runConsumer (V.mapM_ (unwrap e) v)
                               else Left "vecN: invalid vector size"
    ivecN n e = wrap $ \v -> if V.length v == n
                                then fmap fst $ runConsumer (V.mapM_ (unwrap e) (V.indexed v))
                                else Left "ivecN: invalid vector size"
    uvecN n e = wrap $ \v -> if VU.length v == n
                                then fmap fst $ runConsumer (VU.mapM_ (unwrap e) v)
                                else Left "uvecN: invalid vector size"
    uivecN n e = wrap $ \v -> if VU.length v == n
                                 then fmap fst $ runConsumer (VU.mapM_ (unwrap e) (VU.indexed v))
                                 else Left "uivecN: invalid vector size"

instance Isolable Printer where
    isolate p = Printer $ Dual $ Kleisli $
        Consumer . fmap ((mempty, ) . toStrict . toLazyText) . runPrinter_ p

instance SyntaxChar Printer where
    decimal = wrap $ Right . B.decimal
    hexadecimal = wrap $ Right . B.hexadecimal
    realFloat = wrap $ Right . B.realFloat
    scientific = wrap $ Right . B.scientificBuilder

instance SyntaxF Printer where
  metadata =  wrap $ Right . (\_ -> B.fromText "")

-- | Runs the printer.
runPrinter :: Printer a b -> b -> Either String (Builder, a)
runPrinter = (runConsumer .) . runKleisli . getDual . unPrinter

-- | Runs the printer and discards the result.
runPrinter_ :: Printer a b -> b -> Either String Builder
runPrinter_ = (fmap fst .) . runPrinter


-- | Runs the printer, discards the result, and returns the Textrr
printText :: Printer a b -> b -> Either String Text
printText p s =
  fmap (toStrict . toLazyText) $  runPrinter_ p s
