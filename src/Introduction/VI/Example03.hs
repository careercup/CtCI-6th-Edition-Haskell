{-|
Module      : Introduction.VI.Example03
Description : Introduction VI (Big O) Example 3 on Page 41
-}
module Introduction.VI.Example03
  ( minAndMax1
  , minAndMax2
  , main
  ) where

import Prelude hiding (max, min)

minAndMax1 :: [Int] -> (Int, Int)
minAndMax1 = minAndMax maxBound minBound

minAndMax :: Int -> Int -> [Int] -> (Int, Int)
minAndMax min max []     = (min, max)
minAndMax min max (x:xs) = minAndMax min' max' xs
  where min' = if x < min then x else min
        max' = if x > max then x else max

minAndMax2 :: [Int] -> (Int, Int)
minAndMax2 xs = (minimum xs, maximum xs)

main :: IO ()
main =
  do print $ minAndMax1 xs
     print $ minAndMax2 xs
  where xs = [1, 2, 5, 2, 2, 5, -1, 9, 3] :: [Int]
