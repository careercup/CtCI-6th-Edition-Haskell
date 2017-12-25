{-|
Module      : Introduction.VI.Question05
Description : Introduction VI (Big O) Question 5 on Page 56
-}
module Introduction.VI.Question05 where

import Prelude hiding (max, min, sqrt)

sqrt :: Int -> Int
sqrt n = sqrt' n 1 n

sqrt' :: Int -> Int -> Int -> Int
sqrt' n min max | max < min  = -1
                | g * g == n = g
                | g * g < n  = sqrt' n (g + 1) max
                | otherwise  = sqrt' n min (g - 1)
  where g = (min + max) `div` 2

main :: IO ()
main = print $ sqrt 26
