{-|
Module      : Introduction.VI.Question12
Description : Introduction VI (Big O) Question 12 on Page 58
-}
module Introduction.VI.Question12
  ( intersection
  , mergesort
  , main
  ) where

-- | The use of binarySearch in the question has been replaced with 'elem' due
--   to the radical change to the runtime that binarySearch would incur.
intersection :: [Int] -> [Int] -> Int
intersection xs ys = length [ () | x <- xs, x `elem` ys' ]
  where ys' = mergesort ys

-- | A Haskell definition to due to the radical change to the runtime that the
--   Java definition would incur.
mergesort :: [Int] -> [Int]
mergesort []  = []
mergesort [x] = [x]
mergesort xs  = merge (mergesort $ take m xs) (mergesort $ drop m xs)
  where m = length xs `div` 2

merge :: [Int] -> [Int] -> [Int]
merge [] ys         = ys
merge xs []         = xs
merge (x:xs) (y:ys) = if x < y
                         then x : merge xs (y:ys)
                         else y : merge (x:xs) ys

main :: IO ()
main = print $ intersection a b
  where a = [ 1, 3, 5, 7] :: [Int]
        b = [ 1, 9, 2, 7] :: [Int]
