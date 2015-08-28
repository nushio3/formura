{-# LANGUAGE TemplateHaskell #-}
module Main where

import Control.Applicative
import Control.Lens
import Control.Monad
import Control.Monad.IO.Class
import Control.Monad.Trans.Either
import Data.Monoid
import qualified Data.Text as T
import qualified Data.Text.IO as T
import System.IO
import System.Process
import qualified Text.Trifecta as Tri
import Text.PrettyPrint.ANSI.Leijen as Pretty hiding (line, (<>), (<$>), empty, integer)


import Language.Formura.Parser.Combinator (internalP)
import Language.Formura.Parser (program)
import Language.IR.Frontend (_functionName)
import Language.IR.Front2Back (translateFunction)
import Language.IR.Back2Code (generate, utilityCode)
import CommandLineOption


main :: IO ()
main = do
  eitherSrcs <- runEitherT $ forM (theOption ^. inputFiles) process
  case eitherSrcs of
   Left dispErr -> dispErr
   Right cppSrcs -> writeSrcs cppSrcs

writeSrcs :: [T.Text] -> IO ()
writeSrcs cppSrcs = do
  let mainFn = theOption ^. outputFilename
  T.writeFile mainFn $ T.unlines $ utilityCode : cppSrcs
  system $ "indent -kr -i2 -nut  -l1000 " ++ mainFn
  return ()


process :: FilePath -> EitherT (IO ()) IO T.Text
process fileName = do
  res <- liftIO $ Tri.parseFromFileEx (internalP program <* Tri.eof) fileName
  prog <- case res of
   Tri.Success prog -> do
     when (theOption ^. verbose) $ liftIO $ do
       putStrLn $ "#### Analyze: " ++ fileName
       mapM_ print prog
     return prog
   Tri.Failure doc ->
     left $ displayIO stdout $ renderPretty 0.8 80 $ doc <> linebreak
  cppSrcs <- liftIO $ do
    putStrLn $ "#### Translate: "
    forM prog $ \fun -> do
      let bFun = translateFunction fun
      when (theOption ^. verbose) $ print bFun
      generate bFun
  return $ T.unlines cppSrcs
