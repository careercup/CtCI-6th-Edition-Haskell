{-|
Module      : Introduction.VI.Question02
Description : Introduction VI (Big O) Question 2 on Page 55
-}
module Introduction.VI.Question02 where

power :: Int -> Int -> Int
power a b | b < 0     = 0
          | b == 0    = 1
          | otherwise = a * power a (b - 1)

main :: IO ()
main = print $ power 3 4
