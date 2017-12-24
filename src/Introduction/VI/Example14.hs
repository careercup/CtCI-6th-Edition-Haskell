{-|
Module      : Introduction.VI.Example14
Description : Introduction VI (Big O) Example 14 (9) on Page 49
-}
module Introduction.VI.Example14 where

import Prelude hiding (sum)

import Introduction.VI.Example14.Internal

sum :: Tree Int -> Int
sum (Tree l v r) = sum l + v + sum r
sum Empty        = 0

main :: IO ()
main = print $ sum $ fromList [0, 1, 2, 3, 4, 5]
