import Data.SBV

type I = SInteger
type Pt = (I,I,I,I)

to_skew :: Pt -> Pt
to_skew (t,z,y,x) = ((3*t - z - y - x) `sDiv` 6, t+z,t+y,t+x)

sPt :: (String -> Symbolic SInteger) -> String -> Symbolic Pt
sPt quantifier name = do
  t <- quantifier $ name ++ "_t"
  z <- quantifier $ name ++ "_z"
  y <- quantifier $ name ++ "_y"
  x <- quantifier $ name ++ "_x"
  return (t,z,y,x)


theoremInj :: Predicate
theoremInj = do
  p1 <- sPt forall "P1"
  p2 <- sPt forall "P2"
  let p1' = to_skew p1
      p2' = to_skew p2
  return $ (p1 ./= p2) ==> (p1' ./= p2')

theoremFul :: Predicate
theoremFul = do
  p1' <- sPt forall "P1'"
  p1  <- sPt exists "P1"
  return $ (to_skew p1 .== p1')

findP :: Predicate
findP = do
  p1  <- sPt exists "P1"
  return $ (to_skew p1 .== (-49,7677,3,-49))

main :: IO ()
main = do
  print =<< prove theoremInj
  print =<< sat findP
  print =<< prove theoremFul
