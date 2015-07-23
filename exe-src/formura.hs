{-# LANGUAGE TemplateHaskell #-}
module Main where

import Control.Applicative
import Control.Monad
import Control.Monad.IO.Class
import Control.Monad.Trans.Either
import Data.Monoid
import System.Environment
import System.IO
import qualified Text.Trifecta as Tri
import Text.PrettyPrint.ANSI.Leijen as Pretty hiding (line, (<>), (<$>), empty, integer)


import Language.Formura.Parser.Combinator (internalP)
import Language.Formura.Parser (program)
import Language.IR.Frontend (_functionName)
import Language.IR.Front2Back (translateFunction)
import Language.IR.Back2Code (generate)


main :: IO ()
main = do
  fns <- getArgs
  forM_ fns $ \fn -> do
    er <-runEitherT (process fn)
    case er of
     Left showErr -> showErr
     Right () -> return ()

process :: FilePath -> EitherT (IO ()) IO ()
process fileName = do
  liftIO $ putStrLn $ "#### Analyze: " ++ fileName
  res <- liftIO $ Tri.parseFromFileEx (internalP program <* Tri.eof) fileName
  prog <- case res of
   Tri.Success prog -> do
     liftIO $ mapM_ print prog
     return prog
   Tri.Failure doc ->
     left $ displayIO stdout $ renderPretty 0.8 80 $ doc <> linebreak
  liftIO $ forM_ prog $ \fun ->
    generate ("output/" ++ fileName ++ "/" ++ _functionName fun) (translateFunction fun)
