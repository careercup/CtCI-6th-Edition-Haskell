{-|
Module      : Introduction.VI.Example01
Description : Introduction VI (Big O) Example 1 on Page 40
-}
module Introduction.VI.Example01 where

import Prelude hiding (sum)

sum :: Int -> Int
sum n | n <= 0    = 0
      | otherwise = n + sum (n - 1)

main :: IO ()
main = print $ sum 4
