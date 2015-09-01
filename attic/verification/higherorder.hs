import Data.SBV

theorem :: Predicate
theorem = do
  x <- forall "x"
  (y,z) <- exists "y"
  return $ 2*y+z .== (x :: SInteger)

main :: IO ()
main = print =<< prove theorem
