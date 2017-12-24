{-|
Module      : Introduction.VI.Example16
Description : Introduction VI (Big O) Example 16 (11) on Page 51
-}
module Introduction.VI.Example16 where

factorial :: Int -> Int
factorial n | n < 0     = -1
            | n == 0    = 1
            | otherwise = n * factorial (n - 1)

main :: IO ()
main = print $ factorial 4
