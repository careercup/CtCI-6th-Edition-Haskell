{-|
Module      : Introduction.VI.Question01
Description : Introduction VI (Big O) Question 1 on Page 55
-}
module Introduction.VI.Question01 where

import Prelude hiding (product)

-- | The infinite loop for negative values of b is by design and part of the
--   original.
product :: Int -> Int -> Int
product _ 0 = 0
product a b = product a (b - 1) + a

main :: IO ()
main = print $ product 5 6
