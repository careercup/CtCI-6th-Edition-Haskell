{-|
Module      : Introduction.VI.Example15
Description : Introduction VI (Big O) Example 15 (10) on Page 50
-}
module Introduction.VI.Example15 where

isPrime :: Int -> Bool
isPrime n = not $ any (\ n' -> n `mod` n' == 0) [2..sqrt']
  where sqrt' = ceiling (sqrt $ fromIntegral n :: Double) :: Int

main :: IO ()
main = mapM_ p [2, 3, 4, 5, 6, 7, 8, 9, 10]
  where p n = if isPrime n
                 then putStrLn $ show n ++ ": prime"
                 else putStrLn $ show n ++ ": not prime"
