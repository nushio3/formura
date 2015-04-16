
THINGS THAT AMUSE ME
WEDNESDAY, JUNE 10, 2009

MORE LLVM

Recently someone asked me on #haskell if you could use the Haskell LLVM bindings to compile some abstract syntax to a Haskell function. Naturally I said yes, but then I realized I had only done it for a boring language with just one type. I had no doubt that it could be done for more complicated languages with multiple types, but it might not be totally obvious how. So I decided to write a simple compiler, and this blog post is the result. First, a simple example:
main = do
        let f :: Double -> Double
            Just f = compile "\\ (x::Double) -> if x == 0 then 0 else 1/(x*x)"
        print (f 2, f 3, f 0)
Running this program produces (as expected)
(0.25,0.1111111111111111,0.0)
What has happened is that the string has been parsed to an abstract syntax tree, translated into LLVM code, then to machine code, and finally turned back into a Haskell callable function. Many things can go wrong along the way, like syntax and type errors, so compile returns a Maybe type to indicate if things went right or wrong. (A more serious version of the compile function would return an error message when something has gone wrong.) The definition of the compilation function is simple and illustrates the flow of the compiler
compile :: (Translate a) => String -> Maybe a
compile = fmap translate . toTFun <=< mParseUFun
The context Translate is there to limit the types that can actually be translated; it's a necessary evil and exactly what types are allowed depends on how advanced we make the compiler. Had we ignored the Maybe type the definitions would have been
compile = translate . toTFun . mParseUFun
which says, first parse to the type UFun (untyped expressions), then type check and turn it into the type TFun a, and finally translate TFun a into an a by LLVM compilation. Let's see how this all works.
The UExp module

The first step is to just define an abstract syntax for the expressions that we want to handle. I'm only allowing leading lambdas (this a very first order language), so there's a distiction between the top level UFun type and the expression type UExp. The U prefix indicates that this version of the syntax is not yet type checked. The definition is pretty boring, but here it is:
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# LANGUAGE RecordWildCards #-}
module UExp(Id, UFun(..), UTyp(..), UExp(..), parseUFun, showOp, mParseUFun) where
import Data.Maybe
import Data.List
import Data.Function
import Text.ParserCombinators.Parsec
import Text.ParserCombinators.Parsec.Expr
import Text.ParserCombinators.Parsec.Token
import Text.ParserCombinators.Parsec.Language

type Id = String

data UFun = UFun [(Id, UTyp)] UExp

data UTyp = UTBol | UTDbl

data UExp
    = UDbl Double        -- ^ Double literal
    | UBol Bool          -- ^ Bool literal
    | UVar Id            -- ^ Variable
    | UApp Id [UExp]     -- ^ Function application
    | ULet Id UExp UExp  -- ^ Local binding
Naturally, we want to be able to show the expressions, if nothing else so for debugging. So I make a Show instance that shows them in a nice way respecting operator precedences etc. There's nothing exciting going on, the large number of lines is just to cover operator printing.
instance Show UFun where
    showsPrec p (UFun [] e) = showsPrec p e
    showsPrec p (UFun vts e) = showParen (p>0) (showString "\\ " . foldr (.) (showString "-> ") (map f vts) . showsPrec 0 e)
      where f (v, t) = showParen True (showString v . showString " :: " . showsPrec 0 t) . showString " "

instance Show UTyp where
    showsPrec _ UTDbl = showString "Double"
    showsPrec _ UTBol = showString "Bool"

instance Show UExp where
    showsPrec p (UDbl d) = showsPrec p d
    showsPrec p (UBol b) = showsPrec p b
    showsPrec _ (UVar i) = showString i
    showsPrec p (UApp "if" [c, t, e]) =
      showParen (p>0) (showString "if " . showsPrec 0 c . showString " then " . showsPrec 0 t . showString " else " . showsPrec 0 e)
    showsPrec p (UApp op [a, b]) = showOp p op a b
    showsPrec _ (UApp op _) = error $ "Uxp.show " ++ op
    showsPrec p (ULet i e b) =
      showParen (p>0) (showString "let " . showString i . showString " = " . showsPrec 0 e . showString " in " . showsPrec 0 b)

showOp :: (Show a, Show b) => Int -> String -> a -> b -> String -> String
showOp q sop a b = showParen (q>mp) (showsPrec lp a . showString sop . showsPrec rp b)
  where (lp,mp,rp) = case lookup sop ops of
                    Just (p, AssocLeft)  -> (p,   p, p+1)
                    Just (p, AssocRight) -> (p+1, p, p)
                    Just (p, AssocNone)  -> (p+1, p, p+1)
                    Nothing              -> (9,   9, 10)

ops :: [(String, (Int, Assoc))]
ops = [("+",  (6, AssocLeft)),
       ("-",  (6, AssocLeft)),
       ("*",  (7, AssocLeft)),
       ("/",  (7, AssocLeft)),
       ("==", (4, AssocNone)),
       ("<=", (4, AssocNone)),
       ("&&", (3, AssocRight)),
       ("||", (2, AssocRight))
      ]
We also want to be able to parse, so I'm using Parsec to parse the string and produce an AST. Again, there's nothing interesting going on. I use the Haskell lexical analysis provided by Parsec. This is available as a TokenParser record, which can be conveniently opened with the RecordWildcard notation TokenParser{..}.
parseUFun :: SourceName -> String -> Either ParseError UFun
parseUFun = parse $ do f <- pFun; eof; return f
  where TokenParser{..} = haskell
        pFun = do
            vts <- between (reservedOp "\\")
                           (reservedOp "->")
                           (many $ parens $ do v <- identifier; reservedOp "::"; t <- pTyp; return (v, t))
               <|> return []
            e <- pExp
            return $ UFun vts e
        pTyp = choice [do reserved "Bool"; return UTBol, do reserved "Double"; return UTDbl]
        pExp = choice [pIf, pLet, pOExp]
        pIf = do reserved "if"; c <- pExp; reserved "then"; t <- pExp; reserved "else"; e <- pExp; return $ UApp "if" [c, t, e]
        pLet = do reserved "let"; i <- identifier; reservedOp "="; e <- pExp; reserved "in"; b <- pExp; return $ ULet i e b
        pOExp = buildExpressionParser opTable pAExp
        pAExp = choice [pDbl, pVar, parens pExp]
        pVar = fmap eVar identifier
        pDbl = fmap (either (UDbl . fromInteger) UDbl) naturalOrFloat
        eVar i = if i == "False" then UBol False else if i == "True" then UBol True else UVar i

        opTable = reverse . map (map mkOp) . groupBy ((==) `on` prec) . sortBy (compare `on` prec) $ ops
          where mkOp (s, (_, a)) = Infix (do reservedOp s; return $ \ x y -> UApp s [x, y]) a
                prec = fst . snd

mParseUFun :: String -> Maybe UFun
mParseUFun = either (const Nothing) Just . (parseUFun "")
The parser is packaged up in mParseUFun which returns an AST if it all worked.
The TExp module

Since the LLVM API is typed it's much easier to translate a typed abstract syntax tree than an untyped abstract syntax tree. The TExp module contains the definition of the typed AST and the type checker that converts to it. There are many ways to formulate type safe abstract syntax trees. I've chosen to use GADTs. I've also picked to represent variables (still) by identifiers, which means that the syntax tree is not necessarily type safe. Furthermore, I've chosen a very limited way to represent function application since this is all I need for this example. The variantions on this are endless.
{-# LANGUAGE GADTs, ExistentialQuantification, PatternGuards #-}
module TExp(Id,
            TFun(..), TTyp(..), TExp(..), DblOp(..), BolOp(..), CmpOp(..),
            Equal(..), test,
            Type(..),
            AFun(..), extractFun,
            typeCheck, toTFun) where
import Data.Maybe
import Control.Monad
import UExp

data TFun a where
    TBody :: TExp a                 -> TFun a
    TLam  :: Id -> TTyp a -> TFun b -> TFun (a->b)

data TTyp a where
    TTBol ::                     TTyp Bool
    TTDbl ::                     TTyp Double
    TTArr :: TTyp a -> TTyp b -> TTyp (a->b)

data TExp a where
    TDbl   :: Double                                            -> TExp Double
    TBol   :: Bool                                              -> TExp Bool
    TDblOp :: DblOp     -> TExp Double -> TExp Double           -> TExp Double
    TBolOp :: BolOp     -> TExp Bool   -> TExp Bool             -> TExp Bool
    TCmpOp :: CmpOp     -> TExp Double -> TExp Double           -> TExp Bool
    TIf    :: TExp Bool -> TExp a      -> TExp a                -> TExp a
    TLet   :: Id        -> TTyp a      -> TExp a      -> TExp b -> TExp b
    TVar   :: Id                                                -> TExp a

data DblOp = DAdd | DSub | DMul | DDiv
    deriving (Eq, Show)

data BolOp = BAnd | BOr
    deriving (Eq, Show)

data CmpOp = CEq | CLe
    deriving (Eq, Show)
So for instance, UApp "+" [UVar "x", UDbl 2.2] will be represented by TDblOp DAdd (TVar "x") (TDbl 2.2) which has type TExp Double. So the type of the expression is now accurately reflected in the type of the syntax tree. Even the UTyp type now has a typed equivalent where the real type is reflected. For completeness, here's some code for pretty printing etc.
{-# LANGUAGE GADTs, ExistentialQuantification, PatternGuards #-}
module TExp(Id,
            TFun(..), TTyp(..), TExp(..), DblOp(..), BolOp(..), CmpOp(..),
            Equal(..), test,
            Type(..),
            AFun(..), extractFun,
            typeCheck, toTFun) where
import Data.Maybe
import Control.Monad
import UExp

instance Show (TFun a) where
    showsPrec p (TBody e) = showsPrec p e
    showsPrec p (TLam i t e) = showParen (p>0)
      (showString "\\ " . showParen True (showString i . showString " :: " . showsPrec 0 t) . showString " -> " . showsPrec 0 e)

instance Show (TTyp a) where
    showsPrec _ TTBol = showString "Bool"
    showsPrec _ TTDbl = showString "Double"
    showsPrec p (TTArr a b) = showParen (p>5) (showsPrec 6 a . showString " -> " . showsPrec 5 b)

instance Show (TExp a) where
    showsPrec p (TDbl d) = showsPrec p d
    showsPrec p (TBol b) = showsPrec p b
    showsPrec _ (TVar i) = showString i
    showsPrec p (TDblOp op a b) = showOp p (fromJust $ lookup op [(DMul, "*"), (DAdd, "+"), (DSub, "-"), (DDiv, "/")]) a b
    showsPrec p (TBolOp op a b) = showOp p (fromJust $ lookup op [(BAnd, "&&"), (BOr, "||")]) a b
    showsPrec p (TCmpOp op a b) = showOp p (fromJust $ lookup op [(CEq, "=="), (CLe, "<=")]) a b
    showsPrec p (TIf c t e) = showParen (p>0) (showString "if " . showsPrec 0 c . showString " then " . showsPrec 0 t . showString " else " . showsPrec 0 e)
    showsPrec p (TLet i _ e b) =
      showParen (p>0) (showString "let " . showString i . showString " = " . showsPrec 0 e . showString " in " . showsPrec 0 b)

The aim of the type checker is to transform from the UExp type to the TExp type, so basically
typeCheckExp :: UExp -> TExp a
But things can go wrong, so it's impossible to always return a TExp, so let's use a Maybe type:
typeCheckExp :: UExp -> Maybe (TExp a)
But wait! This type is totally wrong. Why? Because it promises that given a UExp the type checker can return any type, i.e., writing out the (normally implicit) quantifier the type is:
typeCheckExp :: forall a . UExp -> Maybe (TExp a)
But this is not the case, the type checker will figure out a type and return an expression with this specific type, so the type we really want is
typeCheckExp :: exists a . UExp -> Maybe (TExp a)
Haskell doesn't allow this type to be written this way; we need to package up the existential type in a data type. Like so:
data ATExp = forall a . TExp a ::: TTyp a

data AFun = forall a . AFun (TFun a) (TTyp a)
It might look funny that the existential type is written with a forall, but it makes sense when looking at the type of the constructor function (but not when doing pattern matching). Now we can attempt a couple of cases of the type checker:
typeCheckExp :: UExp -> Maybe ATExp
typeCheckExp (UDbl d) =
    return $ TDbl d ::: TTDbl
typeCheckExp (UBol b) =
    return $ TBol b ::: TTBol
They look quite nice, and they actually work. So what about something more complicated, like arithmetic?
typeCheckExp (UApp op [a, b]) | Just dop <- lookup op [("+", DAdd), ("-", DSub), ("*", DMul), ("/", DDiv)] = do
    a' ::: TTDbl <- typeCheckExp a
    b' ::: TTDbl <- typeCheckExp b
    return $ TDblOp dop a' b' ::: TTDbl
First we conveniently look up the operator among the arithmetic operators, then we recursively call the type checker for the operands. We do this in the Maybe monad. If the type checking a subterm fails that's automatically propagated, and furthermore, if the type checking of a subterm does not yield a TTDbl type then this will cause the pattern matching to fail, and this will generate a Nothing in the maybe monad, so we used failing pattern matching to our advantage here. The interesting case is checking UIf, because here both arms have to have the same type, but we don't know which one. Here's an attempt:
typeCheckExp (UApp "if" [c,t,e]) = do
    c' ::: TTBol <- typeCheckExp c
    t' ::: tt    <- typeCheckExp t
    e' ::: te    <- typeCheckExp e
    guard (tt == te)
    return $ TIf c' t' e' ::: tt
But this doesn't type check. The guard ensures that the two arms have the same type, but that's something we know, but the Haskell type checker doesn't. So it rejects the TIf, because it can't see that both arms have the same type. We need to be trickier in doing the equality test so that it reflects the equality on the type level. There's a standard trick for this, namely this type:
data Equal a b where
    Eq :: Equal a a
If you ever have a value (which must be Eq) of type Equal foo bar then the type checker will know that foo and bar are actually the same type. So let's code equality for TTyp.
test :: TTyp a -> TTyp b -> Maybe (Equal a b)
test TTBol TTBol = return Eq
test TTDbl TTDbl = return Eq
test (TTArr a b) (TTArr a' b') = do
    Eq <- test a a'
    Eq <- test b b'
    return Eq
test _ _ = mzero
This code is worth pondering for a while, it's actually rather clever (I take no credit for it; I stole it from Tim Sheard). Why does even the first clause type check? Because TTBol has type TTyp Bool, so both the type variables (a and b) must be Bool in the first clause, which means that Eq :: Equal Bool Bool is what we're returning. Equipped with this equality we can try type checking again.
typeCheckExp (UApp "if" [c,t,e]) = do
    c' ::: TTBol <- typeCheckExp c
    t' ::: tt    <- typeCheckExp t
    e' ::: te    <- typeCheckExp e
    Eq <- test tt te
    return $ TIf c' t' e' ::: tt
And amazingly this actually works! (A tribute to the hard working ghc implementors.) One (rather large) fly is left in the ointment. What about variables? What do we do when we type check UVar? We must check that there's a bound variable with the right type around. So the type checker needs to be extended with an environment where variables can be looked up. It's mostly straight forward. The environment simply maps a variable to ATExp. So here's the complete type checker as it's actually defined.
type Env = [(Id, ATExp)]

typeCheckExp :: Env -> UExp -> Maybe ATExp
typeCheckExp _ (UDbl d) =
    return $ TDbl d ::: TTDbl
typeCheckExp _ (UBol b) =
    return $ TBol b ::: TTBol
typeCheckExp r (UApp op [a, b]) | Just dop <- lookup op [("+", DAdd), ("-", DSub), ("*", DMul), ("/", DDiv)] = do
    a' ::: TTDbl <- typeCheckExp r a
    b' ::: TTDbl <- typeCheckExp r b
    return $ TDblOp dop a' b' ::: TTDbl
typeCheckExp r (UApp op [a, b]) | Just bop <- lookup op [("&&", BAnd), ("||", BOr)] = do
    a' ::: TTBol <- typeCheckExp r a
    b' ::: TTBol <- typeCheckExp r b
    return $ TBolOp bop a' b' ::: TTBol
typeCheckExp r (UApp op [a, b]) | Just cop <- lookup op [("==", CEq), ("<=", CLe)] = do
    a' ::: TTDbl <- typeCheckExp r a
    b' ::: TTDbl <- typeCheckExp r b
    return $ TCmpOp cop a' b' ::: TTBol
typeCheckExp r (UApp "if" [c,t,e]) = do
    c' ::: TTBol <- typeCheckExp r c
    t' ::: tt    <- typeCheckExp r t
    e' ::: te    <- typeCheckExp r e
    Eq <- test tt te
    return $ TIf c' t' e' ::: tt
typeCheckExp r (ULet i e b) = do
    e' ::: te <- typeCheckExp r e
    b' ::: tb <- typeCheckExp ((i, TVar i ::: te) : r) b
    return $ TLet i te e' b' ::: tb
typeCheckExp r (UVar i) =
    lookup i r
typeCheckExp _ _ =
    mzero
Note the ULet case which extends the environment. First we type check the expression that's being bound, and then add a variable to the environment and type check the body. Finally we need to type check the top level:
typeCheck :: UFun -> Maybe AFun
typeCheck = typeCheckFun []

typeCheckFun :: Env -> UFun -> Maybe AFun
typeCheckFun n (UFun [] b) = do
    e ::: t <- typeCheckExp n b
    return $ AFun (TBody e) t
typeCheckFun n (UFun ((x, typ):vts) b) =
    case typ of
    UTBol -> f TTBol
    UTDbl -> f TTDbl
  where f t = do AFun e r <- typeCheckFun ((x, TVar x ::: t) : n) (UFun vts b); return $ AFun (TLam x t e) (TTArr t r)
When encountering the expression we just type check it, and for an argument we add a variable with the right type to the environment. A small test in ghci:
TExp UExp> mParseUFun "\\ (x::Double) -> x+1" >>= typeCheck
Just (\ (x :: Double) -> x+1.0 :: Double -> Double)
To be able to extract a function from ATFun we need some small utilties.
class Type a where
    theType :: TTyp a
instance Type Double where
    theType = TTDbl
instance Type Bool where
    theType = TTBol
instance (Type a, Type b) => Type (a->b) where
    theType = TTArr theType theType

extractFun :: (Type a) => AFun -> Maybe (TFun a)
extractFun = extract theType

extract :: TTyp a -> AFun -> Maybe (TFun a)
extract s (AFun e t) = do
    Eq <- test t s
    return e

toTFun :: (Type a) => UFun -> Maybe (TFun a)
toTFun = extractFun <=< typeCheck
The class Type allows us to construct the TTyp corresponding to a Haskell type via overloading. Using this and the test function we can then extract a TFun at any type we like. If we try to extract at the wrong type we'll just get Nothing and at the right type we get Just.
The Compiler module

Now all we need to do is to write a function translate that translates a TFun a into the corresponding a. Naturally, using LLVM. Let's start with some simple cases in translating literals to LLVM code.
compileExp :: TExp a -> CodeGenFunction r (Value a)
compileExp (TDbl d) = return $ valueOf d
compileExp (TBol b) = return $ valueOf b
The valueOf function is simply the one that lifts a Haskell value into an LLVM value. Note how nice the GADT works out here and we handle both Double and Bool with any need to compromise type safety. What about arithmetic? Equally easy.
compileExp r (TDblOp op e1 e2) = bind2 (dblOp op) (compileExp r e1) (compileExp r e2)

dblOp :: DblOp -> Value Double -> Value Double -> CodeGenFunction r (Value Double)
dblOp DAdd = add
dblOp DSub = sub
dblOp DMul = mul
dblOp DDiv = fdiv

-- This should be in Control.Monad
bind2 :: (Monad m) => (a -> b -> m c) -> m a -> m b -> m c
bind2 f m1 m2 = do
    x1 <- m1
    x2 <- m2
    f x1 x2
And we can just carry on:
compileExp (TBolOp op e1 e2) = bind2 (bolOp op) (compileExp e1) (compileExp e2)
compileExp (TCmpOp op e1 e2) = bind2 (cmpOp op) (compileExp e1) (compileExp e2)
compileExp (TIf b t e) = mkIf (compileExp b) (compileExp t) (compileExp e)

bolOp :: BolOp -> Value Bool -> Value Bool -> CodeGenFunction r (Value Bool)
bolOp BAnd = and
bolOp BOr  = or

cmpOp :: CmpOp -> Value Double -> Value Double -> CodeGenFunction r (Value Bool)
cmpOp CEq = fcmp FPOEQ
cmpOp CLe = fcmp FPOLE
(The && and || are not short circuiting in this implementation. It would be easy to change.) It's rather amazing that despite these different branches producing and consuming different types it all works out. It's perfectly type safe and free from coercions. This is the beauty of GADTs. Oh, yeah, mkIf. It's just a piece of mess to create some basic blocks, test, and jump.
mkIf :: (IsFirstClass a) =>
        CodeGenFunction r (Value Bool) -> CodeGenFunction r (Value a) -> CodeGenFunction r (Value a) -> CodeGenFunction r (Value a)
mkIf mb mt me = do
    b <- mb
    tb <- newBasicBlock
    eb <- newBasicBlock
    jb <- newBasicBlock
    condBr b tb eb
    defineBasicBlock tb
    t <- mt
    br jb
    defineBasicBlock eb
    e <- me
    br jb
    defineBasicBlock jb
    phi [(t, tb), (e, eb)]
OK, so was lying. The translate function is not quite as easy as that. Just as with type checking we need an environment because of variables. It's easy to add though, and here's the real code.
compileExp :: (Type a, IsFirstClass a) => Env -> TExp a -> CodeGenFunction r (Value a)
compileExp _ (TDbl d) = return $ valueOf d
compileExp _ (TBol b) = return $ valueOf b
compileExp r (TDblOp op e1 e2) = bind2 (dblOp op) (compileExp r e1) (compileExp r e2)
compileExp r (TBolOp op e1 e2) = bind2 (bolOp op) (compileExp r e1) (compileExp r e2)
compileExp r (TCmpOp op e1 e2) = bind2 (cmpOp op) (compileExp r e1) (compileExp r e2)
compileExp r (TIf b t e) = mkIf (compileExp r b) (compileExp r t) (compileExp r e)
compileExp r (TLet i t e b) = do
    e' <- compileExp' r t e
    compileExp ((i, AValue e' t):r) b
compileExp r (TVar i) = return $ fromJust $ castAValue theType =<< lookup i r   -- lookup cannot fail on type checked code

compileExp' :: Env -> TTyp a -> TExp a -> CodeGenFunction r (Value a)
compileExp' r TTDbl e = compileExp r e
compileExp' r TTBol e = compileExp r e
compileExp' _ _ _ = error $ "compileExp': functions not allowed yet"

data AValue = forall a . AValue (Value a) (TTyp a)

castAValue :: TTyp a -> AValue -> Maybe (Value a)
castAValue t (AValue v s) = do
    Eq <- test t s
    return v

type Env = [(Id, AValue)]
Exactly as for the type checking environment we stick the code generation in an environment, and use castAValue project it out of the existential container. The fromJust call in the TVar case cannot fail on type checked code, but with my string based variable representation I have no evidence of this in the TExp so there's actually a cast in the variable case that can fail if scope and type checking has not been performed. The compileExp' is placate the type checker and help it with some evidence about that we are only binding base values. The rest of the code generation module is just house keeping. It's a little ugly, but not terrible.
-- | Compile a TFun into the corresponding LLVM code.
compileFunction :: (Translate a) =>
                   TFun a -> CodeGenModule (Function (RetIO a))
compileFunction = createFunction ExternalLinkage . compileFun []

class Compile a where
    type CG a
    type RetIO a
    type Returns a
    compileFun :: Env -> TFun a -> CG a

instance Compile Double where
    type CG Double = CodeGenFunction Double ()
    type RetIO Double = IO Double
    type Returns Double = Double
    compileFun r (TBody e) = compileExp r e >>= ret
    -- TLam is not well typed

instance Compile Bool where
    type CG Bool = CodeGenFunction Bool ()
    type RetIO Bool = IO Bool
    type Returns Bool = Bool
    compileFun r (TBody e) = compileExp r e >>= ret
    -- TLam is not well typed

instance (Type a, Compile b) => Compile (a -> b) where
    type CG (a->b) = Value a -> CG b
    type RetIO (a->b) = a -> RetIO b
    type Returns (a->b) = Returns b
    -- TBody is not well typed
    compileFun r (TLam i t e) = \ x -> compileFun ((i, AValue x t):r) e
The verbosity and large number of type functions in this section has convinced me that I need to simplify some of the types and classes involved in the LLVM code generation. To convert and LLVM module we call the JIT. This produces a function that returns a value in the IO monad (to be on the safe side) so we need to get rid of the IO, and finally we can get rid of the top level IO, because externally what we are doing is really pure (in some sense).
translate :: (Translate a) => TFun a -> a
translate = unsafePerformIO . fmap unsafePurify . simpleFunction . compileFunction
The Translate context is just an abbreviation for a big context enforced by the LLVM functions. It looks horrendous, but the type checker figured it out for me and I just pasted it in.
{-# LANGUAGE TypeFamilies, FlexibleContexts, ExistentialQuantification, FlexibleInstances, UndecidableInstances #-}
module Compile(Translate, translate) where
import Data.Maybe
import Prelude hiding (and, or)
import TExp
import LLVM.Core hiding (CmpOp)
import LLVM.ExecutionEngine
import System.IO.Unsafe(unsafePerformIO)

class    (Type a,
          Unsafe (RetIO a) a,
          FunctionArgs (RetIO a) (CG a) (CodeGenFunction (Returns a) ()),
          IsFunction (RetIO a),
          Compile a,
          Translatable (RetIO a)) =>
    Translate a
instance (Type a,
          Unsafe (RetIO a) a,
          FunctionArgs (RetIO a) (CG a) (CodeGenFunction (Returns a) ()),
          IsFunction (RetIO a),
          Compile a,
          Translatable (RetIO a)) =>
    Translate a
Conclusion

And that concludes the three parts of the compiler. In about 400 lines of code we can compile a small subset of Haskell expressions to (efficient) machine code. After type checking the rest of the processing is done in a type safe manner (except for a cast in TVar) which is the intention of the high level LLVM interface. Oh, and if you instrument the code generator a little you can peek at the machine code being produced. For instance, for this input to compile
\ (x::Double) ->
let y = x*(x-1) in
let z = x/y + 1 in
if y <= 0 then 0 else 1/(y-z)
we get
__fun1:
 subl $12, %esp
 movsd LCPI1_0, %xmm0
 movsd 16(%esp), %xmm1
 movapd %xmm1, %xmm2
 subsd %xmm0, %xmm2
 mulsd %xmm1, %xmm2
 pxor %xmm3, %xmm3
 ucomisd %xmm2, %xmm3
 jae LBB1_3
LBB1_1:
 divsd %xmm2, %xmm1
 addsd %xmm0, %xmm1
 subsd %xmm1, %xmm2
 movsd LCPI1_0, %xmm0
 divsd %xmm2, %xmm0
LBB1_2:
 movsd %xmm0, (%esp)
 fldl (%esp)
 addl $12, %esp
 ret
LBB1_3:
 pxor %xmm0, %xmm0
 jmp LBB1_2
POSTED BY AUGUSTSS AT 10:35 PM 10 COMMENTS
SATURDAY, FEBRUARY 07, 2009

MORE BASIC

Not that anybody should care, but I've reimplemented by BASIC.
Here's a simple program.

{-# LANGUAGE ExtendedDefaultRules, OverloadedStrings #-}
import BASIC

main = runBASIC $ do
    10 GOSUB 1000
    20 PRINT "* Welcome to HiLo *"
    30 GOSUB 1000

    100 LET I := INT(100 * RND(0))
    200 PRINT "Guess my number:"
    210 INPUT X
    220 LET S := SGN(I-X)
    230 IF S <> 0 THEN 300

    240 FOR X := 1 TO 5
    250   PRINT X*X;" You won!"
    260 NEXT X
    270 STOP

    300 IF S <> 1 THEN 400
    310 PRINT "Your guess ";X;" is too low."
    320 GOTO 200

    400 PRINT "Your guess ";X;" is too high."
    410 GOTO 200

    1000 PRINT "*******************"
    1010 RETURN

    9999 END
In some ways this is a step backwards, since it requires some language extensions in Main. But I wanted to be able to use semicolon in the print statement.
But there it is, an exciting game!

*******************
* Welcome to HiLo *
*******************
Guess my number:
50
Your guess 50 is too high.
Guess my number:
25
Your guess 25 is too low.
Guess my number:
37
Your guess 37 is too low.
Guess my number:
44
Your guess 44 is too low.
Guess my number:
47
Your guess 47 is too low.
Guess my number:
48
1 You won!
4 You won!
9 You won!
16 You won!
25 You won!
Labels: BASIC, DSL, Haskell

POSTED BY AUGUSTSS AT 8:31 PM 8 COMMENTS
FRIDAY, FEBRUARY 06, 2009

IS HASKELL FAST?

Let's do a simple benchmark comparing Haskell to C. My benchmark computes an approximation to infinity by adding up 1/n. Here is the C code:
#include <stdio.h>

int
main(int argc, char **argv)
{
  double i, s;
  s = 0;
  for (i = 1; i < 100000000; i++)
    s += 1/i;
  printf("Almost infinity is %g\n", s);
}
And running it
Lennarts-Computer% gcc -O3 inf.c -o inf
Lennarts-Computer% time ./inf
Almost infinity is 18.9979
1.585u 0.009s 0:01.62 97.5%     0+0k 0+0io 0pf+0w
And now the Haskell code:
import BASIC

main = runBASIC' $ do

    10 LET I =: 1
    20 LET S =: 0
    30 LET S =: S + 1/I
    40 LET I =: I + 1
    50 IF I <> 100000000 THEN 30
    60 PRINT "Almost infinity is"
    70 PRINT S
    80 END
And running it:
Lennarts-Computer% ghc --make Main.hs
[4 of 4] Compiling Main             ( Main.hs, Main.o )
Linking Main ...
Lennarts-Computer% ./Main
Almost infinity is
18.9979
CPU time:   1.57s
As you can see it's about the same time. In fact the assembly code for the loops look pretty much the same. Here's the Haskell one:
LBB1_1: ## _L4
        movsd   LCPI1_0, %xmm2
        movapd  %xmm1, %xmm3
        addsd   %xmm2, %xmm3
        ucomisd LCPI1_1, %xmm3
        divsd   %xmm1, %xmm2
        addsd   %xmm2, %xmm0
        movapd  %xmm3, %xmm1
        jne     LBB1_1  ## _L4
Labels: BASIC, Benchmark, DSL, Haskell, LLVM

POSTED BY AUGUSTSS AT 4:50 PM 11 COMMENTS
REGRESSION

They say that as you get older you regress back towards childhood. So I present you with today's Haskell program (the idea shamelessly stolen from JoshTriplett from #haskell on IRC):
import BASIC

main = runBASIC $ do

    10 LET X =: 1
    20 PRINT "Hello BASIC world!"
    30 LET X =: X + 1
    40 IF X <> 11 THEN 20
    50 END
Yes, it runs. (I'm sorry about the =: instead of =, but some things are just too wired into Haskell to change.)
Labels: BASIC, DSL, Haskell

POSTED BY AUGUSTSS AT 11:12 AM 13 COMMENTS
WEDNESDAY, JANUARY 21, 2009

A PERFORMANCE UPDATE

I've continued playing with the LLVM. I discovered that when generating code for the normcdf and Black-Scholes functions I did not tell LLVM that the functions that were called (exp etc.) are actually pure functions. That meant that the LLVM didn't perform CSE properly.
So here are some updated numbers for computing an option prices for 10,000,000 options:

Pure Haskell: 8.7s
LLVM: 2.0s
Just as a reminder, the code for normcdf looks like this:
normcdf x = x %< 0 ?? (1 - w, w)
  where w = 1.0 - 1.0 / sqrt (2.0 * pi) * exp(-l*l / 2.0) * poly k
        k = 1.0 / (1.0 + 0.2316419 * l)
        l = abs x
        poly = horner coeff
        coeff = [0.0,0.31938153,-0.356563782,1.781477937,-1.821255978,1.330274429]
A noteworthy thing is that exactly the same code can be used both for the pure Haskell and the LLVM code generation; it's just a matter of overloading.
Vectors

An very cool aspect of the LLVM is that it has vector instructions. On the x86 these translate into using the SSE extensions to the processor and can speed up computations by doing things in parallel.
Again, by using overloading, the exact same code can be used to compute over vectors of numbers as with individual numbers.

So what about performance? I used four element vectors of 32 bit floating point numbers and got these results:

Pure Haskell: 8.7s
LLVM, scalar: 2.0s
LLVM, vector: 1.1s
C, gcc -O3: 2.5s
Some caveats if you try out vectors in the LLVM.
Only on MacOS does the LLVM package give you fast primitive functions, because that's the only platform that seems to have this as a standard.
The vector version of floating point comparison has not been implemented in the LLVM yet.
Do not use two element vectors of type 32 bit floats. This will generate code that is wrong on the x86. I sent in a bug report about this, but was told that it is a feature and not a bug. (I kid you not.) To make the code right you have to manually insert EMMS instructions.
The GHC FFI is broken for all operations that allocate memory for a Storable, e.g., alloca, with, withArray etc. These operations do not take the alignment into account when allocating. This means that, e.g., a vector of four floats may end up on 8 byte alignment instead of 16. This generates a segfault.
On the whole, I'm pretty happy with the LLVM performance now; about 8 times faster than ghc on this example.
[Edit:] Added point about broken FFI.

Labels: Code generation, Haskell, LLVM

POSTED BY AUGUSTSS AT 1:07 AM 12 COMMENTS
SATURDAY, JANUARY 10, 2009

LLVM ARITHMETIC

So we want to compute x2-5x+6 using the Haskell LLVM bindings. It would look some something like this.
    xsq <- mul x x
    x5  <- mul 5 x
    r1  <- sub xsq x5
    r   <- add r1 6
Not very readable, it would be nicer to write
    r   <- x^2 - 5*x + 6
But, e.g., the add instruction has the (simplified) type Value a -> Value a -> CodeGenFunction r (Value a), where CodeGenFunction is the monad for generating code for a function. (BTW, the r type variable is used to keep track of the return type of the function, used by the ret instruction.)
We can't change the return type of add, but we can change the argument type.

type TValue r a = CodeGenFunction r (Value a)
add' :: TValue r a -> TValue r a -> TValue r a
add' x y = do x' <- x; y' <- y; add x' y'
Now the type fits what the Num class wants. And we can make an instance declaration.
instance (Num a) => Num (TValue r a) where
    (+) = add'
    (-) = sub'
    (*) = mul'
    fromInteger = return . valueOf . fromInteger
We are getting close, the only little thing is that the x in our original LLVM code has type Value a rather than TValue r a, but return takes care of that. So:
    let x' = return x
    r <- x'^2 - 5*x' + 6
And a quick look at the generated LLVM code (for Double) shows us that all is well.
; x in %0
 %1 = mul double %0, %0
 %2 = mul double 5.000000e+00, %0
 %3 = sub double %1, %2
 %4 = add double %3, 6.000000e+00
All kinds of numeric instances and some other goodies are available in the LLVM.Util.Arithmetic module. Here is a complete Fibonacci (again) using this.

import Data.Int
import LLVM.Core
import LLVM.ExecutionEngine
import LLVM.Util.Arithmetic

mFib :: CodeGenModule (Function (Int32 -> IO Int32))
mFib = recursiveFunction $ \ rfib n ->
    n %< 2 ? (1, rfib (n-1) + rfib (n-2))

main :: IO ()
main = do
    let fib = unsafeGenerateFunction mFib
    print (fib 22)
The %< operator compares values returning a TValue r Bool. The c ? (t, e) is a conditional expression, like C's c ? t : e.
The type given to mFib is not the most general one, of course. The most general one can accept any numeric type for argument and result. Here it is:

mFib :: (Num a, Cmp a, IsConst a,
         Num b, Cmp b, IsConst b, FunctionRet b) =>
        CodeGenModule (Function (a -> IO b))
mFib = recursiveFunction $ \ rfib n ->
    n %< 2 ? (1, rfib (n-1) + rfib (n-2))
It's impossible to generate code for mFib directly; code can only be generated for monomorphic types. So a type signature is needed when generating code to force a monomorphic type.
main = do
    let fib :: Int32 -> Double
        fib = unsafeGenerateFunction mFib
        fib' :: Int16 -> Int64
        fib' = unsafeGenerateFunction mFib
    print (fib 22, fib' 22)
Another example

Let's try a more complex example. To pick something mathematical to have lots of formulae we'll do the Cumulative Distribution Function. For the precision of a Float it can be coded like this in Haskell (normal Haskell, no LLVM):
normcdf x = if x < 0 then 1 - w else w
  where w = 1 - 1 / sqrt (2 * pi) * exp(-l*l / 2) * poly k
        k = 1 / (1 + 0.2316419 * l)
        l = abs x
        poly = horner coeff
        coeff = [0.0,0.31938153,-0.356563782,1.781477937,-1.821255978,1.330274429]

horner coeff base = foldr1 multAdd coeff
  where multAdd x y = y*base + x
We cannot use this directly, it has type normcdf :: (Floating a, Ord a) => a -> a. The Ord context is a problem, because there are no instance of Ord for LLVM types. The comparison is the root of the problem, since it returns a Bool rather than a TValue r Bool.
It's possible to hide the Prelude and overload the comparisons, but you cannot overload the if construct. So a little rewriting is necessary regardless. Let's just bite the bullet and change the first line.

normcdf x = x %< 0 ? (1 - w, w)
And with that change, all we need to do is
mNormCDF = createFunction ExternalLinkage $ arithFunction $ normcdf

main :: IO ()
main = do
    writeFunction "CDF.bc" (mNormCDF :: CodeGenModule (Function (Float -> IO Float)))
So what happened here? Looking at normcdf it contains a things that the LLVM cannot handle, like lists. But all the list operations happen when the Haskell code runs and nothing of that is left in the LLVM code.
If you optimize and generate code for normcdf it looks like this (leaving out constants and half the code):

__fun1:
        subl    $28, %esp
        pxor    %xmm0, %xmm0
        ucomiss 32(%esp), %xmm0
        jbe     LBB1_2
        movss   32(%esp), %xmm0
        mulss   %xmm0, %xmm0
        divss   LCPI1_0, %xmm0
        movss   %xmm0, (%esp)
        call    _expf
        fstps   24(%esp)
        movss   32(%esp), %xmm0
        mulss   LCPI1_1, %xmm0
        movss   %xmm0, 8(%esp)
        movss   LCPI1_2, %xmm0
        movss   8(%esp), %xmm1
        addss   %xmm0, %xmm1
        movss   %xmm1, 8(%esp)
        movaps  %xmm0, %xmm1
        divss   8(%esp), %xmm1
        movaps  %xmm1, %xmm2
        mulss   LCPI1_3, %xmm2
        addss   LCPI1_4, %xmm2
        mulss   %xmm1, %xmm2
        addss   LCPI1_5, %xmm2
        mulss   %xmm1, %xmm2
        addss   LCPI1_6, %xmm2
        mulss   %xmm1, %xmm2
        addss   LCPI1_7, %xmm2
        mulss   %xmm1, %xmm2
        pxor    %xmm1, %xmm1
        addss   %xmm1, %xmm2
        movss   24(%esp), %xmm1
        mulss   LCPI1_8, %xmm1
        mulss   %xmm2, %xmm1
        addss   %xmm0, %xmm1
        subss   %xmm1, %xmm0
        movss   %xmm0, 20(%esp)
        flds    20(%esp)
        addl    $28, %esp
        ret
LBB1_2:
        ...
And that looks quite nice, in my opinion.
Black-Scholes

I work at a bank these days, so let's do the most famous formula in financial maths, the Black-Scholes formula for pricing options. Here's a Haskell rendition of it.
blackscholes iscall s x t r v = if iscall then call else put
  where call = s * normcdf d1 - x*exp (-r*t) * normcdf d2
        put  = x * exp (-r*t) * normcdf (-d2) - s * normcdf (-d1)
        d1 = (log(s/x) + (r+v*v/2)*t) / (v*sqrt t)
        d2 = d1 - v*sqrt t
Again, it uses an if, so it needs a little fix.
blackscholes iscall s x t r v  = iscall ? (call, put)
With that fix, code can be generated directly from blackscholes. The calls to normcdf are expanded inline, but it's easy to make some small changes to the code so that it actually does function calls.
Some figures

To test the speed of the generated code I ran blackscholes over a portfolio of 10,000,000 options and summed their value. The time excludes the time to set up the portfolio array, because that is done in Haskell. I also ran the code in pure Haskell on a list with 10,000,000 elements.
Unoptimized LLVM   17.5s
Optimized LLVM      8.2s
Pure Haskell        9.3s
The only surprise here is how well pure Haskell (with -O2) performs. This is a very good example for Haskell though, because the list gets fused away and everything is strict. A lot of the time is spent in log and exp in this code, so perhaps the similar results are not so surprising after all.
Labels: Code generation, Haskell, LLVM

POSTED BY AUGUSTSS AT 3:33 PM 0 COMMENTS
WEDNESDAY, JANUARY 07, 2009

LLVM

The LLVM, Low Level Virtual Machine, is a really cool compiler infrastructure project with many participants. The idea is that if you want to make a new high quality compiler you just have to generate LLVM code, and then there are lots of optimizations and code generators available to get fast code.
There are different ways to generate input to the LLVM tools. You can generate a text file with LLVM code and feed it to the tools, or you can use bindings for some programming language and programmatically build the LLVM code. The original bindings from the LLVM project is for C++, but they also provide C bindings. On top of the C bindings you can easily interface to other languages; for instance O'Caml and Haskell.

There are also diffent things you can do to LLVM code you have build programmatically. You can transform it, you can write to a file, you can run an interpreter on it, or execute it with a JIT compiler.

Haskell LLVM bindings

There is a Haskell binding to the LLVM. It has two layers. You can either work on the C API level and have ample opportunity to shoot your own limbs to pieces, or you can use the high level interface which is mostly safe.
Bryan O'Sullivan did all the hard work of taking the C header files and producing the corresponding Haskell FFI files. He also made a first stab at the high level interface, which I have since change a lot (for better or for worse).

An example

Let's do an example. We'll write the LLVM code for this function
  f x y z = (x + y) * z
In Haskell this function is polymorphic, but when generating machine code we have to settle for a type. Let's pick Int32. (The Haskell Int type cannot be used in talking to LLVM; it doesn't a well defined size.) Here is how it looks:
mAddMul :: CodeGenModule (Function (Int32 -> Int32 -> Int32 -> IO Int32))
mAddMul =
  createFunction ExternalLinkage $ \ x y z -> do
    t <- add x y
    r <- mul t z
    ret r
For comparison, the LLVM code in text for for this would be:
define i32 @_fun1(i32, i32, i32) {
        %3 = add i32 %0, %1
        %4 = mul i32 %3, %2
        ret i32 %4
}
So what does the Haskell code say? The mAddMul definition is something in the CodeGenModule monad, and it generates a Function of type Int32 -> Int32 -> Int32 -> IO Int32. That last is the type of f above, except for that IO. Why the IO? The Haskell LLVM bindings forces all defined functions to return something in the IO monad, because there are no restriction on what can happen in the LLVM code; it might very well do IO. So to be on the safe side, there's always an IO on the type. If we know the function is harmless, we can use unsafePerformIO to get rid of it.
So the code does a createFunction which does what the name suggests. The ExternalLinkage argument says that this function will be available outside the module it's in, the obvious opposite being InternalLinkage. Using InternalLinkage is like saying static on the top level in C. In this examples it doesn't really matter which we pick.

The function has three arguments x y z. The last argument to createFunction should be a lambda expression with the right number of arguments, i.e., the number of arguments should agree with the type. We the use monadic syntax to generate an add, mul, and ret instruction.

The code looks like assembly code, which is the level that LLVM is at. It's a somewhat peculiar assembly code, because it's on SSA (Static Single Assignment) form. More about that later.

So what can we do with this function? Well, we can generate machine code for it and call it.

main = do
    addMul <- simpleFunction mAddMul
    a <- addMul 2 3 4
    print a
In this code addMul has type Int32 -> Int32 -> Int32 -> IO Int32, so it has to be called in the IO monad. Since this is a pure function, we can make the type pure, i.e., Int32 -> Int32 -> Int32 -> Int32.
main = do
    addMul <- simpleFunction mAddMul
    let addMul' = unsafePurify addMul
    print (addMul' 2 3 4)
The unsafePurify functions is simply an extension of unsafePerformIO that drops the IO on the result of a function.
So that was pretty easy. To make a function, just specify the LLVM code using the LLVM DSEL that the Haskell bindings provides.

Fibonacci

No FP example is complete without the Fibonacci function, so here it is.
mFib :: CodeGenModule (Function (Word32 -> IO Word32))
mFib = do
    fib <- newFunction ExternalLinkage
    defineFunction fib $ \ arg -> do
        -- Create the two basic blocks.
        recurse <- newBasicBlock
        exit <- newBasicBlock

        -- Test if arg > 2
        test <- icmp IntUGT arg (2::Word32)
        condBr test recurse exit

        -- Just return 1 if not > 2
        defineBasicBlock exit
        ret (1::Word32)

        -- Recurse if > 2, using the cumbersome plus to add the results.
        defineBasicBlock recurse
        x1 <- sub arg (1::Word32)
        fibx1 <- call fib x1
        x2 <- sub arg (2::Word32)
        fibx2 <- call fib x2
        r <- add fibx1 fibx2
        ret r
    return fib
Instead of using createFunction to create the function we're using newFunction and defineFunction. The former is a shorthand for the latter two together. But splitting making the function and actually defining it means that we can refer to the function before it's been defined. We need this since fib is recursive.
Every instruction in the LLVM code belongs to a basic block. A basic block is a sequence of non-jump instructions (call is allowed in the LLVM) ending with some kind of jump. It is always entered at the top only. The top of each basic block can be thought of as a label that you can jump to, and those are the only places that you can jump to.

The code for fib starts with a test if the argument is Unsigned Greater Than 2. The condBr instruction branches to recurse if test is true otherwise to exit. To be able to refer to the two branch labels (i.e., basic blocks) before they are defined we create them with newBasicBlock and then later define them with defineBasicBlock. The defineBasicBlock simply starts a new basic block that runs to the next basic block start, or to the end of the function. The type system does not check that the basic block ends with a branch (I can't figure out how to do that without making the rest of the code more cumbersome).

In the false branch we simply return 1, and in the true branch we make the two usual recursive calls, add the results, and return the sum.

As you can see a few type annotations are necessary on constants. In my opinion they are quite annoying, because if you write anything different from ::Word32 in those annotations there will be a type error. This means that in principle the compiler has all the information, it's just too "stupid" to use it.

The performance you get from this Fibonacci function is decent, but in fact worse than GHC with -O2 gives. Even with full optimization turned on for the LLVM code it's still not as fast as GHC for this function.

[Edit: Added assembly] Here is the assembly code for Fibonacci. Note how there is only one recursive call. The other call has been transformed into a loop.

_fib:
 pushl %edi
 pushl %esi
 subl $4, %esp
 movl 16(%esp), %esi
 cmpl $2, %esi
 jbe LBB1_4
LBB1_1:
 movl $1, %edi
 .align 4,0x90
LBB1_2:
 leal -1(%esi), %eax
 movl %eax, (%esp)
 call _fib
 addl %edi, %eax
 addl $4294967294, %esi
 cmpl $2, %esi
 movl %eax, %edi
 ja LBB1_2
LBB1_3:
 addl $4, %esp
 popl %esi
 popl %edi
 ret
LBB1_4:
 movl $1, %eax
 jmp LBB1_3
Hello, World!

The code for printing "Hello, World!":
import Data.Word
import LLVM.Core
import LLVM.ExecutionEngine

bldGreet :: CodeGenModule (Function (IO ()))
bldGreet = do
    puts <- newNamedFunction ExternalLinkage "puts" :: TFunction (Ptr Word8 -> IO Word32)
    greetz <- createStringNul "Hello, World!"
    func <- createFunction ExternalLinkage $ do
      tmp <- getElementPtr greetz (0::Word32, (0::Word32, ()))
      call puts tmp -- Throw away return value.
      ret ()
    return func

main :: IO ()
main = do
    greet <- simpleFunction bldGreet
    greet
To get access to the C function puts we simply declare it and rely on the linker to link it in. The greetz variable has type pointer to array of characters. So to get a pointer to the first character we have to use the rather complicated getElementPtr instruction. See FAQ about it.
Phi instructions

Let's do the following simple C function
int f(int x)
{
  if (x < 0) x = -x;
  return (x+1);
}
Let's try to write some corresponding LLVM code:
  createFunction ExternalLinkage $ \ x -> do
    xneg <- newBasicBlock
    xpos <- newBasicBlock
    t <- icmp IntSLT x (0::Int32)
    condBr t xneg xpos

    defineBasicBlock xneg
    x' <- sub (0::Int32) x
    br xpos

    defineBasicBlock xpos
    r1 <- add ??? (1::Int32)
    ret r1
But what should we put at ???? When jumping from the condBr the value is in x, but when jumping from the negation block the value is in x'. And this is how SSA works. Every instruction puts the value in a new "register", so this situation is unavoidable. This is why SSA (and thus LLVM) form has phi instructions. This is a pseudo-instruction to tell the code generator what registers should be merged at the entry of a basic block. So the real code looks like this:
mAbs1 :: CodeGenModule (Function (Int32 -> IO Int32))
mAbs1 =
  createFunction ExternalLinkage $ \ x -> do
    top <- getCurrentBasicBlock
    xneg <- newBasicBlock
    xpos <- newBasicBlock
    t <- icmp IntSLT x (0::Int32)
    condBr t xneg xpos

    defineBasicBlock xneg
    x' <- sub (0::Int32) x
    br xpos

    defineBasicBlock xpos
    r <- phi [(x, top), (x', xneg)]
    r1 <- add r (1::Int32)
    ret r1
The phi instruction takes a list of registers to merge, and paired up with each register is the basic block that the jump comes from. Since the first basic block in a function is created implicitely we have to get it with getCurrentBasicBlock which returns the current basic block.
If, like me, you have a perverse interest in the machine code that gets generated here is the optimized code for that function on for x86:

__fun1:
        movl    4(%esp), %eax
        movl    %eax, %ecx
        sarl    $31, %ecx
        addl    %ecx, %eax
        xorl    %ecx, %eax
        incl    %eax
        ret
Note how the conditional jump has cleverly been replaced by some non-jumping instructions. I think this code is as good as it gets.
Loops and arrays

Let's do a some simple array code, the dot product of two vectors. The function takes a length and pointers to two vectors. It sums the elementwise product of the vectors. Here's the C code:
double
dotProd(unsigned int len, double *aPtr, double *bPtr)
{
    unsigned int i;
    double s;

    s = 0;
    for (i = 0; i != len; i++)
        s += aPtr[i] * bPtr[i];
    return s;
}
The corresponding LLVM code is much more complicated and has some new twists.
import Data.Word
import Foreign.Marshal.Array
import LLVM.Core
import LLVM.ExecutionEngine

mDotProd :: CodeGenModule (Function (Word32 -> Ptr Double -> Ptr Double -> IO Double))
mDotProd =
  createFunction ExternalLinkage $ \ size aPtr bPtr -> do
    top <- getCurrentBasicBlock
    loop <- newBasicBlock
    body <- newBasicBlock
    exit <- newBasicBlock

    -- Enter loop, must use a br since control flow joins at the loop bb.
    br loop

    -- The loop control.
    defineBasicBlock loop
    i <- phi [(valueOf (0 :: Word32), top)]  -- i starts as 0, when entered from top bb
    s <- phi [(valueOf 0, top)]  -- s starts as 0, when entered from top bb
    t <- icmp IntNE i size       -- check for loop termination
    condBr t body exit

    -- Define the loop body
    defineBasicBlock body

    ap <- getElementPtr aPtr (i, ()) -- index into aPtr
    bp <- getElementPtr bPtr (i, ()) -- index into bPtr
    a <- load ap                 -- load element from a vector
    b <- load bp                 -- load element from b vector
    ab <- mul a b                -- multiply them
    s' <- add s ab               -- accumulate sum

    i' <- add i (valueOf (1 :: Word32)) -- Increment loop index

    addPhiInputs i [(i', body)]  -- Control flow reaches loop bb from body bb
    addPhiInputs s [(s', body)]
    br loop                      -- And loop

    defineBasicBlock exit
    ret (s :: Value Double)      -- Return sum

main = do
    ioDotProd <- simpleFunction mDotProd
    let dotProd a b =
         unsafePurify $
         withArrayLen a $ \ aLen aPtr ->
         withArrayLen b $ \ bLen bPtr ->
         ioDotProd (fromIntegral (aLen `min` bLen)) aPtr bPtr

    let a = [1,2,3]
        b = [4,5,6]
    print $ dotProd a b
    print $ sum $ zipWith (*) a b
First we have to set up the looping machinery. There a four basic blocks involved: the implicit basic block that is created at the start of every function, top; the top of the loop, loop; the body of the loop, body; and finally the block with the return from the function, exit.
There are two "registers", the loop index i and the running sum s that arrive from two different basic blocks at the top of the loop. When entering the loop from the first time they should be 0. That's what the phi instruction specifies. The valueOf function simply turns a constant into an LLVM value. It's worth noting that the initial values for the two variables are constant rather than registers. The control flow also reached the basic block loop from the end of body, but we don't have the names of those registers in scope yet, so we can't put them in the phi instruction. Instead, we have to use addPhiInputs to add more phi inputs later (when the registers are in scope).

The most mysterious instruction in the LLVM is getElementPtr. It simply does address arithmetic, so it really does something quite simple. But it can perform several levels of address arithmetic when addressing through multilevel arrays and structs. In can take several indicies, but since here we simply want to add the index variable to a pointer the usage is pretty simple. Doing getElementPtr aPtr (i, ()) corresponds to aPtr + i in C.

To test this function we need pointers to two vectors. The FFI function withArrayLen temporarily allocates the vector and fills it with elements from the list.

The essential part of the function looks like this in optimized x86 code:

        pxor    %xmm0, %xmm0
        xorl    %esi, %esi
        .align  4,0x90
LBB1_2:
        movsd   (%edx,%esi,8), %xmm1
        mulsd   (%ecx,%esi,8), %xmm1
        incl    %esi
        cmpl    %eax, %esi
        addsd   %xmm1, %xmm0
        jne     LBB1_2
Which is pretty good. Improving this would have to use SSD vector instructions. This is possible using the LLVM vector type, but I'll leave that for now.
Abstraction

The loop structure in dotProd is pretty common, so we would like to abstract it out for reuse. The creation of basic blocks and phi instructions is rather fiddly so it would be nice to do this once and not worry about it again.
What are the parts of the loop? Well, let's just do a simple "for" loop that loops from a lower index (inclusive) to an upper index (exclusive) and executes the loop body for each iteration. So there should be three arguments to the loop function: lower bound, upper bound and loop body. What is the loop body? Since the LLVM is using SSA the loop body can't really update the loop state variables. Instead it's like a pure functional language where you have to express it as a state transformation. So the loop body will take the old state and return a new state. It's also useful to pass the loop index to the loop body. Now when we've introduced the notion of a loop state we also need to have an initial value for the loop state as an argument to the loop function.

Let's start out easy and let the state to be updated in the loop be a single value. In dotProd it's simply the running sum (s).

forLoop low high start incr = do
    top <- getCurrentBasicBlock
    loop <- newBasicBlock
    body <- newBasicBlock
    exit <- newBasicBlock

    br loop

    defineBasicBlock loop
    i <- phi [(low, top)]
    state <- phi [(start, top)]
    t <- icmp IntNE i high
    condBr t body exit

    defineBasicBlock body

    state' <- incr i state
    i' <- add i (valueOf 1)

    body' <- getCurrentBasicBlock
    addPhiInputs i [(i', body')]
    addPhiInputs state [(state', body')]
    br loop
    defineBasicBlock exit

    return state
The low and high arguments are simply the loop bounds, start is the start value for the loop state variable, and finally incr is invoked in the loop body to get the new value for the state variable. Note that the incr can contain new basic blocks so there's no guarantee we're in the same basic block after incr has been called. That's why there is a call to getCurrentBasicBlock before adding to the phi instructions.
So the original loop in dotProd can now be written

    s <- forLoop 0 size 0 $ \ i s -> do
      ap <- getElementPtr aPtr (i, ()) -- index into aPtr
      bp <- getElementPtr bPtr (i, ()) -- index into bPtr
      a <- load ap                 -- load element from a vector
      b <- load bp                 -- load element from b vector
      ab <- mul a b                -- multiply them
      s' <- add s ab               -- accumulate sum
      return s'
So that wasn't too bad. But what if the loop needs multiple state variables? Or none? The tricky bit is handling the phi instructions since the number of instructions needed depends on how many state variables we have. So let's creat a class for types that can be state variables. This way we can use tuples for multiple state variables. The class needs two methods, the generalization of phi and the generalization of addPhiInputs.
class Phi a where
    phis :: BasicBlock -> a -> CodeGenFunction r a
    addPhis :: BasicBlock -> a -> a -> CodeGenFunction r ()
A simple instance is when we have no state variables.
instance Phi () where
    phis _ _ = return ()
    addPhis _ _ _ = return ()
We also need to handle the case with a single state variable. All LLVM values are encapsulated in the Value type, so this is the one we create an instance for.
instance (IsFirstClass a) => Phi (Value a) where
    phis bb a = do
        a' <- phi [(a, bb)]
        return a'
    addPhis bb a a' = do
        addPhiInputs a [(a', bb)]
Finally, here's the instance for pair. Other tuples can be done in the same way (or we could just use nested pairs).
instance (Phi a, Phi b) => Phi (a, b) where
    phis bb (a, b) = do
        a' <- phis bb a
        b' <- phis bb b
        return (a', b')
    addPhis bb (a, b) (a', b') = do
        addPhis bb a a'
        addPhis bb b b'
Using this new class the looping function becomes
forLoop :: forall i a r . (Phi a, Num i, IsConst i, IsInteger i, IsFirstClass i) =>
           Value i -> Value i -> a -> (Value i -> a -> CodeGenFunction r a) -> CodeGenFunction r a
forLoop low high start incr = do
    top <- getCurrentBasicBlock
    loop <- newBasicBlock
    body <- newBasicBlock
    exit <- newBasicBlock

    br loop

    defineBasicBlock loop
    i <- phi [(low, top)]
    vars <- phis top start
    t <- icmp IntNE i high
    condBr t body exit

    defineBasicBlock body

    vars' <- incr i vars
    i' <- add i (valueOf 1 :: Value i)

    body' <- getCurrentBasicBlock
    addPhis body' vars vars'
    addPhiInputs i [(i', body')]
    br loop
    defineBasicBlock exit

    return vars
File operations

The Haskell bindings provide two convenient functions - writeBitcodeToFile and readBitcodeFromFile - for writing and reading modules in the LLVM binary format.
A simple example:

import Data.Int
import LLVM.Core

mIncr :: CodeGenModule (Function (Int32 -> IO Int32))
mIncr =
  createNamedFunction ExternalLinkage "incr" $ \ x -> do
    r <- add x (1 :: Int32)
    ret r

main = do
    m <- newModule
    defineModule m mIncr
    writeBitcodeToFile "incr.bc" m
Running this will produce the file incr.bc which can be processed with the usual LLVM tools. E.g.
$ llvm-dis < incr.bc  # to look at the LLVM code
$ opt -std-compile-opts incr.bc -f -o incrO.bc # run optimizer
$ llvm-dis < incrO.bc  # to look at the optimized LLVM code
$ llc incrO.bc # generate assembly code
$ cat incrO.s  # look at assembly code
Reading a module file is equally easy, but what can you do with a module you have read? It could contain anything. To extract things from a module there is a function getModuleValues which returns a list of name-value pairs of all externally visible functions and global variables. The values all have type ModuleValue. To convert a ModuleValue to a regular Value you have to use castModuleValue. This is a safe conversion function that makes a dynamic type test to make sure the types match (think of ModuleValue as Dynamic and castModuleValue as fromDynamic).
Here's an example:

import Data.Int
import LLVM.Core
import LLVM.ExecutionEngine

main = do
    m <- readBitcodeFromFile "incr.bc"
    ee <- createModuleProviderForExistingModule m >>= createExecutionEngine
    funcs <- getModuleValues m
    let ioincr :: Function (Int32 -> IO Int32)
        Just ioincr = lookup "incr" funcs >>= castModuleValue
        incr = unsafePurify $ generateFunction ee ioincr

    print (incr 41)
This post is getting rather long, so I'll let this be the last example for today.
Labels: Code generation, DSL, Haskell, LLVM

POSTED BY AUGUSTSS AT 4:14 PM 17 COMMENTS
ABOUT ME

AUGUSTSS
LONDON, UNITED KINGDOM
VIEW MY COMPLETE PROFILE
LINKS

Google News
Jessica
PREVIOUS POSTS

A commentary on 24 days of GHC extensions, part 3
A commentary on 24 days of GHC extensions, part 2
A commentary on 24 days of GHC extensions
Haskell error reporting with locations, update
Haskell error reporting with locations
A small Haskell extension
Impredicative polymorphism, a use case In a recen...
More points for lazy evaluation In a recent blo...
Ugly memoization Here's a problem that I recentl...
Phew! Cleaned out a lot of spam comments in my bl...
ARCHIVES

April 2007
May 2007
June 2007
July 2007
August 2007
October 2007
November 2007
March 2008
July 2008
December 2008
January 2009
February 2009
June 2009
April 2011
May 2011
July 2011
April 2014
December 2014
Powered by Blogger
