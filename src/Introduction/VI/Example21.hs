{-|
Module      : Introduction.VI.Example21
Description : Introduction VI (Big O) Example 21 (16) on Page 54
-}
module Introduction.VI.Example21 where

powersOf2 :: Int -> [Int]
powersOf2 n | n < 1     = [0]
            | n == 1    = [1]
            | otherwise = p ++ [last p * 2]
  where p = powersOf2 (n `div` 2)

main :: IO ()
main = mapM_ print $ powersOf2 100
