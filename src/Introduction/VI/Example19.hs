{-|
Module      : Introduction.VI.Example19
Description : Introduction VI (Big O) Example 19 (14) on Page 53
-}
module Introduction.VI.Example19 where

allFib :: Int -> IO ()
allFib n = mapM_ p [0..n - 1]
  where p i = print $ show i ++ ": " ++ show (fib i)

fib :: Int -> Int
fib n | n <= 0    = 0
      | n == 1    = 1
      | otherwise = fib (n - 1) + fib (n - 2)

main :: IO ()
main = allFib 6
