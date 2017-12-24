{-|
Module      : Introduction.VI.Example06
Description : Introduction VI (Big O) Example 6 (1) on Page 46
-}
module Introduction.VI.Example06 where

foo :: [Int] -> (Int, Int)
foo xs = (sum xs, product xs)

main :: IO ()
main = print $ foo [1, 2, 5, 2, 2, 5, -1, 9, 3]
