module Formura.Interpreter.Eval where

import Formura.Interpreter.Environment

class Evalable a where
  eval :: Environment -> a -> Int
