--   The spurious assignemnt to k in this function is marked with a warning
--   about an unused assignment:
--
--   src/Introduction/VI/Example10.hs:8:70: warning: [-Wunused-matches]
--       Defined but not used: ‘k’
--
--   Thus, we disable this warning locally:
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

{-|
Module      : Introduction.VI.Example10
Description : Introduction VI (Big O) Example 10 (5) on Page 48
-}
module Introduction.VI.Example10 where

-- | Haskell doesn't really provide an exact analogue for this example due to
--   Haskell's use of memoization.  What this means is that in Haskell the value
--   for k is only calculated once regardless of its position in the repetitions
--   involved in these computations.
printUnorderedPairs :: [Int] -> [Int] -> IO ()
printUnorderedPairs xs ys = mapM_ print [ (x, y) | x <- xs, y <- ys, k <- [1..1000] :: [Int] ]

main :: IO ()
main = printUnorderedPairs [0, 1, 2, 3] [4, 5, 6]
