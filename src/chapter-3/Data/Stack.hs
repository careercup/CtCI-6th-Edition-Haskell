module Data.Stack where

newtype Stack a = Stack [a]
  deriving (Eq, Show)

push :: a -> Stack a -> Stack a
push a (Stack xs) = Stack (a:xs)

pop :: Stack a -> Stack a
pop (Stack (_:xs)) = Stack xs
pop (Stack []) = Stack []

peek :: Stack a -> Maybe a
peek (Stack (x:_)) = Just x
peek (Stack []) = Nothing

isEmpty :: Stack a -> Bool
isEmpty (Stack []) = True
isEmpty (Stack _)  = False

mkStack :: a -> Stack a
mkStack a = Stack [a]


