{-|
Module      : Introduction.VI.Example02
Description : Introduction VI (Big O) Example 2 on Page 41
-}
module Introduction.VI.Example02 where

pairSumSequence :: Int -> Int
pairSumSequence n | n <= 0    = 0
                  | otherwise = sum $ zipWith (+) xs $ map (+ 1) xs
  where xs = [1..n]

main :: IO ()
main = print $ pairSumSequence 4
