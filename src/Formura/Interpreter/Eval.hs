module Formura.Interpreter.Eval where

import Formura.Interpreter.Value

class Evalable a where
  eval :: Environment -> a -> Int
