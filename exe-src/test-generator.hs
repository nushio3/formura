module Main where

import Compiler.Hoopl

import Language.IR.Back2Code (generate)
import Language.IR.Backend

prog1 :: Function
prog1 = Function
  { _name = "chino",
    _entryDecls = [VarDecl "double" ([-1,-1],[1,1]) "dens"],
    _middleDecls = [VarDecl "double" ([0,-1],[0,1]) "dens_x"],
    _body = graph1}

graph1 :: Graph (Insn ()) O O
graph1 =  mkMiddles
         [ Assign () (RLoad "dens_x") $ (1/3) * ((Load "dens" [-1,0]) + (Load "dens" [0,0]) + (Load "dens" [1,0]))
         , Assign () (RLoad "dens_next") $ (1/3) * ((Load "dens_x" [0,1]) + (Load "dens_x" [0,0]) + (Load "dens_x" [0,1]))
         ]

main :: IO ()
main = do
  generate "test-gen" prog1
