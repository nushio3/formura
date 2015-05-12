{-# LANGUAGE OverloadedStrings #-}
import Control.Monad
import Data.Ratio
import qualified Data.Text as T
import Text.Printf


densAt :: Rational -> Rational -> Rational -> String
densAt t y x =
  T.unpack $
  T.replace "+-" "-" $
  T.replace "+0" "" $
  T.pack $
  printf "pat[t+%d][y+%d][x+%d]" (f t) (f y) (f x)
  where
    f :: Rational -> Int
    f = floor

gen' :: Rational -> Rational -> String
gen' y x = printf "%s = 0.5*%s + 0.125*((%s+%s)+(%s+%s));"
          (densAt t y x)
          (densAt (t-0.5) (y+1) (x+1))
          (densAt (t-0.75) (y+1) (x))
          (densAt (t-0.25) (y+1) (x+2))
          (densAt (t-0.75) (y) (x+1))
          (densAt (t-0.25) (y+2) (x+1))
  where
    t0 = 0.25*(x+y)
    t = onZero t0

    onZero x
      | x < 0 = onZero $ x+1
      | x >=1 = onZero $ x-1
      | otherwise = x


gen :: Rational -> Rational -> String
gen y x = printf "%s = compute_stencil(%s, %s, %s, %s, %s);"
          (densAt t y x)
          (densAt (t-0.5) (y+1) (x+1))
          (densAt (t-0.75) (y+1) (x))
          (densAt (t-0.25) (y+1) (x+2))
          (densAt (t-0.75) (y) (x+1))
          (densAt (t-0.25) (y+2) (x+1))
  where
    t0 = 0.25*(x+y)
    t = onZero t0

    onZero x
      | x < 0 = onZero $ x+1
      | x >=1 = onZero $ x-1
      | otherwise = x



genInit :: Int -> Int -> String
genInit y x = printf "pat[t][y+%d][x+%d]=init_state[y+%d][x+%d];" y x y x

genFin :: Int -> Int -> String
genFin y x = printf "fin_state[y+%d][x+%d]=pat[t][y+%d][x+%d];" y x y x


main :: IO ()
main = do
  writeFile "gen.cpp" $
    unlines [gen y x | y <- reverse [0..3], x <- reverse [0..3]]
  writeFile "gen-init.cpp" $
    unlines [genInit y x | y <- [0..3], x <- [0..3]]
  writeFile "gen-fin.cpp" $
    unlines [genFin y x | y <- [0..3], x <- [0..3]]
