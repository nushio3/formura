import Control.Monad.Reader
import Control.Monad.State

main :: IO ()
main = do
  runReaderT prog 62
  evalStateT prog2 62

prog :: ReaderT Int IO ()
prog = do
  ask >>= liftIO . print
  local (+10) $ do
    ask >>= liftIO . print
  ask >>= liftIO . print

prog2 :: StateT Int IO ()
prog2 = do
  get >>= liftIO . print
  withStateT (+10) $ do
    get >>= liftIO . print
  get >>= liftIO . print
