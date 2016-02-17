{-# LANGUAGE DeriveFunctor, DeriveFoldable, DeriveTraversable, FlexibleContexts, ScopedTypeVariables, TypeFamilies, TypeOperators #-}

module Formura.Language.TExpr where

import Control.Lens

import Formura.Language.Combinator
import Formura.Syntax

-- | A type for multy-way tree of type a, with possible failure
data TExpr a = Atom a
             | Tree [TExpr a]
             | {- Human Is Dead -} Mismatch
             deriving (Eq, Ord, Show, Functor, Foldable, Traversable)

instance Applicative TExpr where
  pure x = Atom x
  (<*>) = go where
    go (Atom f) (Atom x) = Atom (f x)
    go (Tree afs) ax@(Atom _) = Tree [ af <*> ax | af <- afs]
    go af@(Atom _) (Tree axs) = Tree [ af <*> ax | ax <- axs]
    go (Tree afs) (Tree axs) | length afs == length axs = Tree $ zipWith (<*>) afs axs
                             | otherwise                = Mismatch
    go _ _ = Mismatch

-- | Convert between 'TExpr' and 'Lang'uage with 'Tuple'
tExpr :: forall fs. (TupleF ∈ fs) => Prism' (TExpr (Lang fs)) (Lang fs)
tExpr = prism' go back
  where
    go :: Lang fs -> TExpr (Lang fs)
    go (Tuple xs) = Tree $ map go xs
    go x = Atom x

    back :: TExpr (Lang fs) -> Maybe (Lang fs)
    back (Atom x) = Just x
    back (Tree xs) = Tuple <$> mapM back xs
    back _ = Nothing
