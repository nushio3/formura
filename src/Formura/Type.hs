module Formura.Type where

import Formura.Syntax

up :: TypeExpr -> TypeExpr -> TypeExpr
up a b | a == b = a
up
up _ _ = TopType
