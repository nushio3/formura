import qualified Data.Map as M

type Node = String

type Prog = M.Map Node RExpr


data RExpr = Add Node Node | Shift Node | Imm
                                          deriving Show
prog :: Prog
prog = M.fromList
  [ ("input",  Imm )
  , ("input2",  Shift "input" )
  , ("a", Add "input" "input2")
  , ("b", Add "a" "a")
  , ("c", Shift "b")
  , ("d", Add "b" "c")]

gen :: Int -> Prog -> Node -> Either String String
gen offset p n = do
  case M.lookup n p of
   Nothing -> Left $ "node not found: " ++ n
   Just rhs -> case rhs of
     Imm -> return $ n ++ "[" ++  show offset ++ "]"
     Shift n2 -> gen (offset+1) p n2
     Add n1 n2 -> do
       a1 <- gen offset p n1
       a2 <- gen offset p n2
       return $ a1 ++ "+" ++ a2



main :: IO ()
main = do
  print $ gen 0 prog "d"
