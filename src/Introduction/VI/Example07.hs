{-|
Module      : Introduction.VI.Example07
Description : Introduction VI (Big O) Example 7 (2) on Page 46
-}
module Introduction.VI.Example07 where

printPairs :: [Int] -> IO ()
printPairs xs = mapM_ print [ (x, x') | x <- xs, x' <- xs ]

main :: IO ()
main = printPairs [ 0, 1, 2, 3 ]
