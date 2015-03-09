
import Control.Applicative
import Data.IORef
import System.IO.Unsafe


data Exp = Var String
         | Lam String Exp
         | App Exp Exp
  deriving Show
           
counter :: IORef Int
counter = unsafePerformIO $ newIORef 0
{-# NOINLINE counter #-}

genSym :: IO String
genSym = do
  modifyIORef counter succ 
  n <- readIORef counter
  return $ "g" ++ show n
  
subst :: Exp -> String -> Exp -> IO Exp
subst e2 x e1 = case e1 of
  Var y | x == y    -> return e2
        | otherwise -> return e1
  Lam y e -> do
    y' <- genSym
    fmap (Lam y') (subst (Var y') y e)
  App e e' -> App <$> subst e2 x e <*> subst e2 x e'
  
step :: Exp -> IO [Exp]  
step e = case e of
  Var e -> return []
  Lam x e0 -> fmap (fmap (Lam x)) $ step e0
  App e1 e2 -> do
    r1 <- case e1 of 
      Lam x e0 -> fmap (:[]) (subst e2 x e0)
      _        -> return []
    r2 <- fmap (fmap $ \e1' -> App e1' e2) (step e1)
    r3 <- fmap (fmap $ \e2' -> App e1 e2') (step e2)
    return $ r1 ++ r2 ++ r3
    
final :: Exp -> IO Exp    
final e = do
  se <- step e
  case se  of
    [] -> return e
    (e' : _) -> final e'
    
omega :: Exp    
omega = App (Lam "x" (App (Var "x") (Var "x")))   (Lam "x" (App (Var "x") (Var "x")))


demiomega :: Exp
demiomega = App (Lam "x" (Lam "y" (Var "y"))) omega