import qualified Data.Map as M


data Value = VLit Double
           | VSymbol String
           | VObj Object
type Object = M.Map String Value

-- type ... integer


f :: Object
f = M.fromList
  [("type", "function")
  ,("argument-list", [])]

main :: IO ()
main = do
  print "hi"
