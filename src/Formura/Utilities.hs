{-# LANGUAGE ConstraintKinds, LambdaCase, MultiWayIf, TemplateHaskell, TupleSections #-}

module Formura.Utilities where

import           Control.Concurrent
import qualified Control.Exception as C
import           Control.Monad
import qualified Data.ByteString as BS
import           Data.Foldable
import qualified Data.HashMap.Strict as HM
import           Data.List (isPrefixOf, sort, intercalate)
import qualified Data.Yaml as Y
import qualified Data.Yaml.Pretty as Y
import           System.Directory
import           System.Exit
import           System.FilePath ((</>))
import           System.FilePath.Lens
import           System.IO
import           System.IO.Temp
import           System.Process

----------------------------------------------------------------
-- https://wiki.haskell.org/Foldable_and_Traversable
----------------------------------------------------------------

data Supply s v = Supply { unSupply :: [s] -> ([s],v) }

instance Functor (Supply s) where
  fmap f av = Supply (\l -> let (l',v) = unSupply av l in (l',f v))

instance Applicative (Supply s) where
  pure v    = Supply (\l -> (l,v))
  af <*> av = Supply (\l -> let (l',f)  = unSupply af l
                                (l'',v) = unSupply av l'
                            in (l'',f v))

runSupply :: (Supply s v) -> [s] -> v
runSupply av l = snd $ unSupply av l

supply :: Supply s s
supply = Supply (\(x:xs) -> (xs,x))

zipTF :: (Traversable t, Foldable f) => t a -> f b -> t (a,b)
zipTF t f = runSupply (traverse (\a -> (,) a <$> supply) t) (toList f)

zipFT :: (Traversable t, Foldable f) => f a -> t b -> t (a,b)
zipFT = zipWithFT (,)

zipWithTF :: (Traversable t,Foldable f) => (a -> b -> c) -> t a -> f b -> t c
zipWithTF g t f = runSupply  (traverse (\a -> g a <$> supply) t) (toList f)

zipWithFT :: (Traversable t,Foldable f) => (a -> b -> c) -> f a -> t b -> t c
zipWithFT g = flip $ zipWithTF (flip g)

----------------------------------------------------------------
-- System Call Utilities
----------------------------------------------------------------


cmd :: String -> IO ExitCode
cmd str = do
  hPutStrLn stderr str
  system str

-- copy remote file/local file/url from one another
superCopy :: FilePath -> FilePath -> IO ()
superCopy src dest = do
  let isUrl = or [x `isPrefixOf` src | x <- ["http://", "https://", "ftp://"]]
      go :: (String -> IO ()) -> IO ()
      go k
        | isUrl = withSystemTempFile "tmp" $ \fn h -> do
            hClose h
            cmd $ "wget " ++ src ++ " -O " ++ fn
            k fn
        | otherwise = k src
  go $ \fn -> do
    cmd $ unwords ["scp -r ", fn, dest]
    return ()

superDoesFileExist :: FilePath -> IO Bool
superDoesFileExist fn = do
  let (host,b) = break (==':') fn
  case b of
    "" -> doesFileExist fn
    (_:path) -> do
      xc <- cmd $ "ssh " ++ host ++ " ls " ++ "'" ++ path ++ "'"
      case xc of
        ExitSuccess -> return True
        ExitFailure _  -> return False


writeYaml :: Y.ToJSON a => FilePath -> a -> IO ()
writeYaml fn obj = BS.writeFile fn $ Y.encodePretty (Y.setConfCompare compare Y.defConfig) obj

readYaml :: Y.FromJSON a => FilePath -> IO (Maybe a)
readYaml fn = do
  Y.decodeFileEither fn >>= \case
    Left msg -> do
      hPutStrLn stderr $ "When reading " ++ fn ++ "\n" ++ Y.prettyPrintParseException msg
      return Nothing
    Right x -> return $ Just x

readYamlDef :: (Y.ToJSON a, Y.FromJSON a) => a -> FilePath -> IO (Maybe a)
readYamlDef def fn = do
  Y.decodeFileEither fn >>= \case
    Left msg -> do
      hPutStrLn stderr $ "When reading " ++ fn ++ "\n" ++ Y.prettyPrintParseException msg
      return Nothing
    Right v -> do
      let v2 :: Y.Value
          v2 = unionValue v (Y.toJSON def)
      case (Y.decodeEither' $ Y.encode v2) of
        Left msg -> do
          hPutStrLn stderr $ "When merging " ++ fn ++ "\n" ++ Y.prettyPrintParseException msg
          return Nothing
        Right x -> return $ Just x

  where
    unionValue :: Y.Value -> Y.Value -> Y.Value
    unionValue (Y.Object hm1) (Y.Object hm2) = Y.Object $ HM.unionWith unionValue hm1 hm2
    unionValue a _ = a

-- Object !Object
-- Array !Array
-- String !Text
-- Number !Scientific
-- Bool !Bool
-- Null


readCmd :: String -> IO String
readCmd str = interactCmd str ""

interactCmd
    :: String                   -- ^ shell command to run
    -> String                   -- ^ standard input
    -> IO String                -- ^ stdout + stderr
interactCmd cmdstr input = do
    (Just inh, Just outh, _, pid) <-
        createProcess (shell cmdstr){ std_in  = CreatePipe,
                                      std_out = CreatePipe,
                                      std_err = Inherit }

    -- fork off a thread to start consuming the output
    output  <- hGetContents outh
    outMVar <- newEmptyMVar
    forkIO $ C.evaluate (length output) >> putMVar outMVar ()

    -- now write and flush any input
    when (not (null input)) $ do hPutStr inh input; hFlush inh
    hClose inh -- done with stdin

    -- wait on the output
    takeMVar outMVar
    hClose outh

    -- wait on the process
    ex <- waitForProcess pid

    case ex of
     ExitSuccess   -> return output
     ExitFailure r ->
      error ("readSystem: " ++ cmdstr ++ " (exit " ++ show r ++ ")")
