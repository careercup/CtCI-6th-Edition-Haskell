{-|
Module      : Introduction.VI.Example04
Description : Introduction VI (Big O) Example 4 on Page 43
-}
module Introduction.VI.Example04 where

foo :: [Int] -> [Int] -> IO ()
foo xs ys = mapM_ print $ xs ++ ys

bar :: [Int] -> [Int] -> IO ()
bar xs ys = mapM_ print [(x, y) | x <- xs, y <- ys]

main :: IO ()
main =
  do foo xs ys
     bar xs ys
  where xs = [1, 2, 5, 2, 2, 5, -1, 9, 3] :: [Int]
        ys = [5, 2, 1, 0, 2] :: [Int]
