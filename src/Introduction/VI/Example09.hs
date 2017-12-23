{-|
Module      : Introduction.VI.Example09
Description : Introduction VI (Big O) Example 9 (4) on Page 47
-}
module Introduction.VI.Example09 where

printUnorderedPairs :: [Int] -> [Int] -> IO ()
printUnorderedPairs xs ys = mapM_ print [ (x, y) | x <- xs, y <- ys, x < y ]

main :: IO ()
main = printUnorderedPairs [ 0, 1, 2, 3] [4, 5, 6]
