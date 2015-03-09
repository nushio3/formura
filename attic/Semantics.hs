{-# LANGUAGE FlexibleInstances, TypeSynonymInstances #-}
import Data.Map as M
import Data.Ratio

type Symbol = String
type Array = Hash -> Double

instance Num Array where
  (f + g)(x) = f x + g x

data ValueType = VS Symbol | VQ Rational | VR Double | VH Hash

instance Num ValueType where
  (VQ x) + (VQ y) = VQ (x+y)
  fromInteger = VQ . fromInteger
  
instance Fractional ValueType where
  fromRational = VQ . fromRational


type Hash = M.Map Symbol ValueType

mkH :: (ValueType, ValueType, ValueType) -> Hash  -> Hash 
mkH (x,y,z) h = insert "X" x $ insert "Y" y $ insert "Z" z h

partial :: Symbol -> Array -> Array
partial "X" f h = let i = h ! "X"
                      j = h ! "Y"
                      k = h ! "Z"
                  in (f . mkH (i + 1/2,j,k) ) h - (f . mkH (i - 1/2,j,k) ) h

div :: Symbol -> Array -> Array
div c a = partial "X" a +  partial "Y" a +  partial "Z" a

main :: IO ()
main = do
  putStrLn "hello"
  