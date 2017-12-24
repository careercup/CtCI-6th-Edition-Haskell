{-|
Module      : Introduction.VI.Example18
Description : Introduction VI (Big O) Example 18 (13) on Page 52
-}
module Introduction.VI.Example18 where

fib :: Int -> Int
fib n | n <= 0    = 0
      | n == 1    = 1
      | otherwise = fib (n - 1) + fib (n - 2)

main :: IO ()
main = mapM_ p [0..6] 
  where p n = print $ show n ++ ": " ++ show (fib n)
