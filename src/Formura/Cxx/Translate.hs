{-# LANGUAGE OverloadedStrings, TemplateHaskell #-}

module Formura.Cxx.Translate where

import           Control.Applicative
import           Control.Lens
import           Control.Monad
import           Control.Monad.RWS
import qualified Data.Aeson.TH as J
import           Data.Char (toLower)
import           Data.Foldable (toList)
import qualified Data.IntMap as G
import           Data.Monoid
import qualified Data.Text as T
import           Text.Trifecta (failed, raiseErr)


import qualified Formura.Annotation as A
import           Formura.Annotation.Representation
import           Formura.Compiler
import           Formura.GlobalEnvironment
import           Formura.OrthotopeMachine.Graph
import           Formura.Syntax
import           Formura.Vec

showt :: Show a => a -> T.Text
showt = T.pack . show

parens :: T.Text -> T.Text
parens x = "(" <> x <> ")"

brackets :: T.Text -> T.Text
brackets x = "[" <> x <> "]"

newtype VariableName = VariableName T.Text

data TranState = TranState
  { _tranSyntacticState :: CompilerSyntacticState
  , _extent :: Vec Int
  , _indexVariables :: Vec T.Text
  , _theGraph :: Graph
  }
makeClassy ''TranState

instance HasCompilerSyntacticState TranState where
  compilerSyntacticState = tranSyntacticState

defaultTranState :: TranState
defaultTranState = TranState
  { _tranSyntacticState = defaultCompilerSyntacticState{ _compilerStage = "C++ code generation"}
  , _extent = Vec []
  , _indexVariables = Vec []
  , _theGraph = G.empty
  }


type TranM = CompilerMonad GlobalEnvironment T.Text TranState

-- * Parallel code generation

-- |  Configuration for distributed parallel code generation.
data NumericalConfig = NumericalConfig
  { _ncSingleThreadShape :: Vec Int
  , _ncOMPThreadShape :: Vec Int
  , _ncMPINodeShape :: Vec Int
  }
J.deriveJSON J.defaultOptions{J.fieldLabelModifier = drop 3, J.constructorTagModifier = map toLower} ''NumericalConfig

defaultNumericalConfig :: NumericalConfig
defaultNumericalConfig =
  NumericalConfig
  { _ncSingleThreadShape = Vec [64,64]
  , _ncOMPThreadShape = Vec [2,4]
  , _ncMPINodeShape = Vec [5,10]
  }


lookupNode :: NodeID -> TranM Node
lookupNode i = do
  g <- use theGraph
  case G.lookup i g of
   Nothing -> raiseErr $ failed $ "out-of-bound node reference: #" ++ show i
   Just n -> do
     case A.viewMaybe n of
        Just meta -> compilerFocus %= (meta <|>)
        Nothing -> return ()
     return n

cursorToCode :: T.Text -> Vec Int -> TranM T.Text
cursorToCode vn (PureVec 0) = return $ vn <> "[i]"
cursorToCode vn (Vec [0]) = return $ vn <> "[i]"
cursorToCode vn (Vec [1]) = return $ parens $
  "i == NX_AVX-1 ? _mm256_permutevar8x32_ps(" <> vn <> "[0],permute_fwd)" <>":" <> vn <> "[i+1]"
cursorToCode vn (Vec [-1]) = return $ parens $
  "i == 0 ? _mm256_permutevar8x32_ps(" <> vn <> "[NX_AVX-1],permute_bwd)" <>":" <> vn <> "[i-1]"
cursorToCode vn (Vec xs) = return $ vn <> showt xs
cursorToCode _ c = raiseErr $ failed $ "unsupported cursor position: " ++ show c


rhsCodeAt :: Vec Int -> NodeID -> TranM T.Text
rhsCodeAt cursor nid = do
  nd <- lookupNode nid
  case A.viewMaybe nd of
     Just Manifest -> do
       Just (VariableName vn) <- return $ A.viewMaybe nd
       cursorToCode vn cursor
     _  -> rhsDelayedCodeAt cursor nd

rhsDelayedCodeAt :: Vec Int -> Node -> TranM T.Text
rhsDelayedCodeAt cursor (Node inst0 typ0 ann0) = do
  case inst0 of
     Imm r -> return $ showt (realToFrac r :: Double)
     Uniop op a -> do
       a_code <- rhsCodeAt cursor a
       return $ parens $ T.pack op <> a_code
     Binop op a b -> do
       a_code <- rhsCodeAt cursor a
       b_code <- rhsCodeAt cursor b
       return $ parens $ a_code <> T.pack op <> b_code
     Shift vi a -> rhsCodeAt (cursor + vi) a
     LoadExtent i -> do
       ext <- use extent
       return $ showt (ext ^?! ix i :: Int)
     Store _ a -> rhsCodeAt cursor a
     x -> raiseErr $ failed $ "cxx codegen unimplemented for keyword: " ++ show x

manifestNodes :: Graph -> [NodeID]
manifestNodes g =
  map fst $
  filter f $
  G.toList g
  where
    f :: (NodeID, Node) -> Bool
    f (_, nd) = case A.viewMaybe nd of
      Just Manifest -> True
      _             -> False

nameManifestVariables :: TranM ()
nameManifestVariables = do
  theGraph %= G.mapWithKey nameIt
  where
    nameIt :: NodeID -> Node -> Node
    nameIt i n =
      let newName = case A.viewMaybe n of
                      Just (SourceName n) -> T.pack n
                      _    -> "a_" <> showt i
      in n & A.annotation %~ A.set (VariableName newName)

populateIndexVariables :: TranM ()
populateIndexVariables = liftIO $ putStrLn "populate index variables!"

translate :: NumericalConfig -> TranM ()
translate nconf = censor makeCxxBody $ do
  dim <- view dimension
  populateIndexVariables
  nameManifestVariables
  g <- use theGraph
  let ms = manifestNodes g
  forM_ ms $ \ mnid -> do
    n <- lookupNode mnid
    case n ^. nodeInst of
      Load _ -> return ()
      _ -> do
        Just (VariableName newName) <- return $ A.viewMaybe n
        rhsCode <- rhsDelayedCodeAt 0 n
        lhsCursor <- cursorToCode newName $ Vec $ replicate dim 0
        tell $ lhsCursor <> " = " <> rhsCode <> ";\n"

cxxHeader :: T.Text
cxxHeader = T.unlines
 [ "#include <iostream>"
 , "#include <immintrin.h>"
 , "#include <x86intrin.h>"
 , ""
 , "using namespace std;"
 , ""
 , "const __m256i permute_fwd =  _mm256_set_epi32(0,7,6,5,4,3,2,1);"
 , "const __m256i permute_bwd =  _mm256_set_epi32(6,5,4,3,2,1,0,7);"
 , ""
 , "void inspect(__m256 a) {"
 , "  float dest[8];"
 , "  _mm256_storeu_ps(&dest[0], a);"
 , "  for (int i = 0; i < 8; ++i)"
 , "    cout << dest[i] << \"\\t\";"
 , "  cout << endl;"
 , "}"]

makeCxxBody :: T.Text -> T.Text
makeCxxBody core = T.unlines
  [ "for (int i = 0; i < NX_AVX; ++i) {"
  , core
  , "}"
  , "SWAP;"
  ]
