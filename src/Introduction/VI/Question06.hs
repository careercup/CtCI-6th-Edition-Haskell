{-|
Module      : Introduction.VI.Question06
Description : Introducion VI (Big O) Question 6 on Page 56
-}
module Introduction.VI.Question06 where

import Prelude hiding (sqrt)

sqrt :: Int -> Int
sqrt n = if null gs
            then -1
            else head gs
  where gs = filter ((== n) . (^(2 :: Int))) $ takeWhile ((<= n) . (^(2 :: Int))) [1..]

main :: IO ()
main = print $ sqrt 26
