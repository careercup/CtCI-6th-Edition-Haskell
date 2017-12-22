{-|
Module      : Introduction.VI.Example05
Description : Introduction VI (Big O) Example 5 on Page 44
-}
module Introduction.VI.Example05 where

f :: Int -> Int
f n | n <= 1    = 1
    | otherwise = f (n - 1) + f (n - 1)

main :: IO ()
main = print $ f 1
