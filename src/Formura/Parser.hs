{-# LANGUAGE FlexibleContexts, GeneralizedNewtypeDeriving, TypeOperators #-}
module Formura.Parser where

import Control.Applicative
import Control.Lens
import Control.Monad
import Data.Char (isSpace, isLetter, isAlphaNum, isPrint)
import Data.Either (partitionEithers)
import Data.Maybe
import qualified Data.Set as S
import Text.Trifecta hiding (ident)
import Text.Trifecta.Delta
import qualified Text.Parser.Expression as X

import Text.Parser.LookAhead

import Formura.Language.Combinator
import Formura.Syntax

newtype P a = P { runP :: Parser a }
            deriving (Alternative, Monad, Functor, MonadPlus, Applicative, CharParsing, LookAheadParsing, Parsing, DeltaParsing, MarkParsing Delta)

instance Errable P where
  raiseErr = P . raiseErr

instance TokenParsing P where
  someSpace =
    let  f '\n' = False
         f '\r' = False
         f x | isSpace x = True
             | otherwise = False

    in some ((satisfy f >> return ())
             <|> comment
             <|> lineContinuation)
       >> return ()

(?>) :: String -> P a -> P a
s ?> p = p <?> s

infixr 0 ?>

comment :: P ()
comment = "comment" ?> do
  char '#'
  manyTill anyChar (lookAhead newline)
  return ()

lineContinuation :: P ()
lineContinuation = "line continuation" ?> do
  char '\\'
  whiteSpace
  newline
  return ()

parseIn :: Functor f => P (Fix f) -> P (Fix f)
parseIn p = do
  r1 <- rend
  (In m x)  <- p
  r2 <- rend
  let m2 = Just $ Metadata r1 (delta r1) (delta r2)
  return $ In (m <|> m2) x


isIdentifierAlphabet0 :: Char -> Bool
isIdentifierAlphabet0 = isLetter
isIdentifierAlphabet1 :: Char -> Bool
isIdentifierAlphabet1 c = isAlphaNum c || c == '_'  || c == '\''
isIdentifierSymbol :: Char -> Bool
isIdentifierSymbol c = isPrint c &&
  not (isIdentifierAlphabet1 c || isSpace c ||
      c `elem` "\"#();[\\]{}")

identName :: P IdentName
identName = "identifier" ?> do
  let s :: P String
      s = some $ "symbolic character" ?> satisfy isIdentifierSymbol
      a0 :: P Char
      a0 = "identifier alphabet character" ?> satisfy isIdentifierAlphabet0
      a1 :: P Char
      a1 = "identifier alphabet character" ?> satisfy isIdentifierAlphabet1
      a :: P String
      a = (:) <$> a0 <*> some a1
  str <- s <|> a
  guard $  str `S.notMember` keywordSet
  whiteSpace
  return str

keyword :: IdentName -> P IdentName
keyword k = "keyword " ++ k ?> do
  when (k `S.notMember` keywordSet) $
    raiseErr $ failed $
    "Please report the compiler developer: \"" ++ k ++ "\" is not in a keyword list!"
  symbol k

keywordSet :: S.Set IdentName
keywordSet = S.fromList
             ["begin", "end", "function", "let", "in", "lambda", "for", "dimension", "axes",
              "+","-","*","/","::","="]


ident :: (IdentF ∈ fs) => P (Lang fs)
ident = "identifier" ?> parseIn $ Ident <$> identName

elemType :: (ElemTypeF ∈ fs) => P (Lang fs)
elemType = "element type" ?> parseIn $ do
  str <- identName
  guard $ str `S.member` elemTypeNames
  return $ ElemType str
    where
      elemTypeNames = S.fromList ["int","rational","float","double","real"]

funType :: (FunTypeF ∈ fs) => P (Lang fs)
funType = "function type" ?> parseIn $ keyword "function" *> pure FunType


tupleOf :: (TupleF ∈ fs) => P (Lang fs) -> P (Lang fs)
tupleOf p = "tuple" ?> {- don't parseIn here ... -} do
  r1 <- rend
  "tuple opening" ?> try $ symbolic '('
  xs <- p `sepBy` symbolic ','
  symbolic ')'
  r2 <- rend
  case xs of
    -- ... because we treat one-element tuple as parenthesized expression.
    [x] -> return x
    _   -> return $ In (Just $ Metadata r1 (delta r1) (delta r2)) $ Tuple xs

gridIndicesOf :: P a -> P [a]
gridIndicesOf parseIdx = "grid index" ?> do
  "grid opening" ?> try $ symbolic '['
  xs <- parseIdx `sepBy` symbolic ']'
  symbolic ']'
  return xs

nPlusK :: P NPlusK
nPlusK = "n+k pattern" ?> do
  x <-  identName
  symbolic '+'
  n <- constRationalExpr
  return $ NPlusK x n



imm :: (ImmF ∈ fs) => P (Lang fs)
imm = "rational literal" ?> parseIn $ do
  x <- constRationalExpr
  return $ Imm $ toRational x

exprOf :: (OperatorF ∈ fs) => P (Lang fs) -> P (Lang fs)
exprOf termParser = X.buildExpressionParser tbl termParser
  where
    tbl = [[binary "*" (Binop "*") X.AssocLeft, binary "/" (Binop "/") X.AssocLeft],
           [unary "+" (Uniop "+") , unary "-" (Uniop "-") ],
           [binary "+" (Binop "+") X.AssocLeft, binary "-" (Binop "-") X.AssocLeft]
          ]
    unary  name fun = X.Prefix (pUni name fun)
    binary name fun assoc = X.Infix (pBin name fun) assoc

    pUni name fun = "unary operator " ++ name ?> do
      r1 <- rend
      f <- fun <$ keyword name
      r2 <- rend
      return $ \a -> f a & metadata .~ (Just $ joinMeta r1 r2 a a)

    pBin name fun = "binary operator " ++ name ?> do
      r1 <- rend
      f <- fun <$ keyword name
      r2 <- rend
      return $ \a b -> f a b & metadata .~ (Just $ joinMeta r1 r2 a b)

    joinMeta r1 r2 a b = let
      da = case a ^. metadata of
        Nothing -> delta r1
        Just ma -> min (ma ^. metadataBegin) (delta r1)
      db = case b ^. metadata of
        Nothing -> delta r2
        Just mb -> max (mb ^. metadataEnd) (delta r2)
      in Metadata r1 da db

expr10 :: P RExpr
expr10 = letExpr <|> lambdaExpr <|> fexpr

fexpr :: P RExpr
fexpr = "function application chain" ?> do
  f <- aexpr
  findArgument f
  where
    findArgument :: RExpr -> P RExpr
    findArgument f = parseIn $ do
      mx <- optional $ tupleOf aexpr
      case mx of
        Just x -> findArgument $ Apply f x
        Nothing -> do
          mx' <- optional $ gridIndicesOf nPlusK
          case mx' of
            Just x -> findArgument $ Grid x f
            Nothing -> return f


aexpr :: P RExpr
aexpr = tupleOf rExpr <|> ident <|> imm


letExpr :: P RExpr
letExpr = "let expression" ?> parseIn $ do
  "keyword let" ?> try $ keyword "let"
  xs <- binding
  keyword "in"
  x <- rExpr
  return $ Let xs x

lambdaExpr :: P RExpr
lambdaExpr = "lambda expression" ?> parseIn $ do
  "keyword for" ?> try $ keyword "for"
  x <- lExpr
  y <- rExpr
  return $ Lambda x y

binding :: P (BindingF RExpr)
binding = do
  stmts <- statementCompound `sepEndBy` statementDelimiter
  return $ Binding $ concat stmts

statementDelimiter :: P ()
statementDelimiter = "statement delimiter" ?> some d >> return ()
  where
    d = (symbolic ';' >> return ()) <|> (newline >> whiteSpace)

statementCompound :: P [StatementF RExpr]
statementCompound = "statement" ?> do
  maybeType <- optional $ "statement starting by type decl" ?> try $ typeExpr <* keyword "::"

  let lhsAndMaybeRhs :: P (LExpr, Maybe RExpr)
      lhsAndMaybeRhs = do
        lhs   <- lExpr
        mRhs  <- optional (keyword "=" >> rExpr)
        return (lhs, mRhs)
  lamrs <- lhsAndMaybeRhs `sepBy1` symbol ","

  let typePart = [ TypeDecl typ lhs
                 | typ <- maybeToList maybeType,
                   lhs <- map fst lamrs
                   ]
      substPart = [Subst lhs rhs
                   | (lhs, Just rhs) <- lamrs]
  return $ typePart ++ substPart




lAexpr :: P LExpr
lAexpr = tupleOf lExpr <|> ident

vectorIndexOf :: P a -> P a
vectorIndexOf content = do
  "vector indexing" ?> try $ symbolic '('
  r <- content
  symbolic ')'
  return r

lFexpr :: P LExpr
lFexpr = do
  f <- lAexpr
  go f
  where
    go :: LExpr -> P LExpr
    go f = parseIn $ do
      mx <- optional $ gridIndicesOf nPlusK
      case mx of
        Just x -> go $ Grid x f
        Nothing -> do
          mx' <- optional (vectorIndexOf identName)
          case mx' of
            Just x -> go $ Vector x f
            Nothing -> return f

lExpr :: P LExpr
lExpr = lFexpr

typeExpr :: P TypeExpr
typeExpr = typeFexpr

typeAexpr :: P TypeExpr
typeAexpr = tupleOf typeExpr <|> elemType <|> funType

typeFexpr :: P TypeExpr
typeFexpr = do
  f <- typeAexpr
  go f
  where
    go :: TypeExpr -> P TypeExpr
    go f = parseIn $ do
      mx <- optional (gridIndicesOf constRationalExpr)
      case mx of
        Just x -> go $ Grid x f
        Nothing -> do
          mx' <- optional (vectorIndexOf constIntExpr)
          case mx' of
            Just x -> go $ Vector x f
            Nothing -> return f


rExpr :: P RExpr
rExpr = exprOf expr10

constRationalExpr :: P Rational
constRationalExpr = do
  nos <- naturalOrScientific
  return $ either toRational toRational  nos

constIntExpr :: P Int
constIntExpr = fromInteger <$> natural


specialDeclaration :: P SpecialDeclaration
specialDeclaration = dd  <|> ad
  where
    dd = do
      "dimension declaration" ?> try $ keyword "dimension"
      keyword "::"
      n <- natural
      return $ DimensionDeclaration $ fromInteger n
    ad = do
      "axes declaration" ?> try $ keyword "axes"
      keyword "::"
      xs <- identName `sepBy` symbolic ','
      return $ AxesDeclaration xs

program :: P Program
program = do
  ps <- choice [Left <$> specialDeclaration, Right <$> statementCompound]
        `sepEndBy` statementDelimiter
  let (decls, stmts) = partitionEithers ps
  return $ Program decls (BindingF $ concat stmts)
