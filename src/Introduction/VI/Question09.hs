{-|
Module      : Introduction.VI.Question09
Description : Introduction VI (Big O) Question 9 on Page 57
-}
module Introduction.VI.Question09 where

import Data.Array (Array, bounds, elems, listArray)

copyArray :: Array Int Int -> Array Int Int
copyArray a = foldl appendToNew (listArray (lb, lb) [head $ elems a]) $ tail $ elems a
  where lb = fst $ bounds a

appendToNew :: Array Int Int -> Int -> Array Int Int
appendToNew a v = listArray bs (elems a ++ [v])
  where bs = (fst (bounds a), 1 + snd (bounds a))

main :: IO ()
main = mapM_ print $ elems c
  where c = copyArray $ listArray (0, 5) [1, 2, 3, 4, 5, 6]
