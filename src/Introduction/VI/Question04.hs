{-|
Module      : Introduction.VI.Question04
Description : Introduction VI (Big O) Question 4 on Page 56
-}
module Introduction.VI.Question04
  ( div
  , main
  ) where

import Prelude hiding (div)

div :: Int -> Int -> Int
div a b = div' a b b

div' :: Int -> Int -> Int -> Int
div' a s b | s <= a    = 1 + div' a (s + b) b
           | otherwise = 0

main :: IO ()
main = print $ div 12 4
