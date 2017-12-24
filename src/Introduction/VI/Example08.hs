{-|
Module      : Introduction.VI.Example08
Description : Introduction VI (Big O) Example 8 (3) on Page 46
-}
module Introduction.VI.Example08 where

printUnorderedPairs :: [Int] -> IO ()
printUnorderedPairs = mapM_ print . triangle
  where triangle (x:xs) = [ (x, x') | x' <- x:xs ] ++ triangle xs
        triangle []     = []

main :: IO ()
main = printUnorderedPairs [ 0, 1, 2, 3 ]
