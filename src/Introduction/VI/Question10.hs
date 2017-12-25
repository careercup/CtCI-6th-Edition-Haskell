{-|
Module      : Introduction.VI.Question10
Description : Introduction VI (Big O) Question 10 on Page 57
-}
module Introduction.VI.Question10 where

sumDigits :: Int -> Int
sumDigits = sum . digits
 where digits n | n > 0     = n `mod` 10 : digits (n `div` 10)
                | otherwise = []

main :: IO ()
main = print $ sumDigits 1252
