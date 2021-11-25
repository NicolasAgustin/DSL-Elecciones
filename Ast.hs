module AST where

type Variable = String
type List = [String]

data ListExp = Const List
             | Var Variable
             | Plus ListExp ListExp
             | Question ListExp ListExp
    deriving (Show, Eq)

data BoolExp = BTrue
             | BFalse
             | Eq ListExp ListExp
             | And BoolExp BoolExp
             | Or BoolExp BoolExp
             | Not BoolExp
    deriving (Show, Eq)

data Command = Pass 
             | Def Variable ListExp
             | Seq Command Command
             | Cond BoolExp Command Command
             | Loop Command BoolExp -- Ver como transformar en foreach
    deriving (Show, Eq)