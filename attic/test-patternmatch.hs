main :: IO ()
main = do
  a <- fmap read getLine
  s <- getLine
  putStrLn $ f s a
  main

f :: String -> Int -> String
f [] x | x > 5 = "no string, big int"
f [] x | x < -5 = "no string, small int"
f [c] _ = "single char"
f _ _ = "other"
