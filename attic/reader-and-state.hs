import Control.Monad.Reader
import Control.Monad.State

main :: IO ()
main = do
  runReaderT prog 62
  evalStateT prog2 62

prog :: ReaderT Int IO ()
prog = do
  ask >>= liftIO . print   -- 62
  local (+10) $ do
    ask >>= liftIO . print -- 72
  ask >>= liftIO . print   -- back to 62

prog2 :: StateT Int IO ()
prog2 = do
  get >>= liftIO . print   -- 62
  withStateT (+10) $ do
    get >>= liftIO . print -- 72
  get >>= liftIO . print   -- still 72!!
