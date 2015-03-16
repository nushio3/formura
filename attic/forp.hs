{-# LANGUAGE OverloadedStrings #-}

import Data.List
import Data.String
import Text.Printf

infixl 9 :. , :@

data Expr = Var String
          | Imm Integer
          | Expr :. Expr -- underscore
          | Expr :@ Expr -- apply
          | Paren [Expr]
          | Brace [Expr]
          | Op String Expr Expr
  deriving (Eq, Ord)

instance Num Expr where
  a + b = Op "+" a b
  a - b = Op "-" a b
  a * b = Op "*" a b
  fromInteger = Imm
  abs = undefined
  signum = undefined

instance Show Expr where
  show (Var s) = s
  show (Imm i) = show i
  show (a :@ b) = printf "%s%s" (show a) (show b)
  show (a :. b) = printf "%s_%s" (show a) (show b)
  show (Paren xs) = printf "(%s)" $ intercalate ", " $ map show xs
  show (Brace xs) = printf "[%s]" $ intercalate ", " $ map show xs
  show (Op s a b) =  printf "%s%s%s" (show a) s (show b)

instance IsString Expr where
  fromString = Var


return1 :: Monad m => a -> m [a]
return1 x = return [x]


step :: Expr -> IO [Expr]
step e = case e of
  "partial" :. "x" :@ Paren [a] :@ Brace [i, j, k] ->
    return1 $ a :@ Brace [i + 1, j, k] -
              a :@ Brace [i - 1, j, k]
  "partial" :. "y" :@ Paren [a] :@ Brace [i, j, k] ->
    return1 $ a :@ Brace [i, j + 1, k] -
              a :@ Brace [i, j - 1, k]
  "partial" :. "z" :@ Paren [a] :@ Brace [i, j, k] ->
    return1 $ a :@ Brace [i , j, k + 1] -
              a :@ Brace [i , j, k - 1]
  "grad" :@ Paren [a] :. d -> return1 $ "partial" :. d :@ Paren [a]
  "div" :@ Paren [a] -> return1 $  "partial" :. "x" :@ Paren [a :. "x"]
                                 + "partial" :. "y" :@ Paren [a :. "y"]
                                 + "partial" :. "z" :@ Paren [a :. "z"]
  (Op s a b) :@ arg -> return1 $ Op s (a :@ arg) (b :@ arg)
  (Op s a b) :. arg -> return1 $ Op s (a :. arg) (b :. arg)
  x :@ y -> do
    xs <- step x
    ys <- step y
    return $ [x' :@ y | x' <- xs]  ++ [x :@ y' | y' <- ys]
  x :. y -> do
    xs <- step x
    ys <- step y
    return $ [x' :. y | x' <- xs]  ++ [x :. y' | y' <- ys]
  Paren [x] -> do
    xs <- step x
    return [Paren [x'] | x' <- xs]
  Op s x y -> do
    xs <- step x
    ys <- step y
    return $ [Op s x' y | x' <- xs]  ++ [Op s x y' | y' <- ys]
  _ -> return []

final :: Expr -> IO Expr
final e = do
  print e
  se <- step e
  case se of
    [] -> return e
    (e' : _) -> final e'




sample :: Expr
sample = "partial" :. "x" :@ Paren ["a"] :@ Brace ["i", "j", "k"]

proceed :: Expr
proceed = "div" :@ Paren ["grad" :@ Paren ["s"]] :@ Brace ["i","j","k"]

main = final proceed >>= print
