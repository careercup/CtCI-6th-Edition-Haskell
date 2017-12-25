{-|
Module      : Introduction.VI.Question03
Description : Introduction VI (Big O) Question 3 on Page 56
-}
module Introduction.VI.Question03 where

import Prelude hiding (mod)

mod :: Int -> Int -> Int
mod a b | b <= 0    = -1
        | otherwise = a - (a `div` b) * b

main :: IO ()
main = print $ mod 3 6
