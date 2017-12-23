{-|
Module      : Introduction.VI.Example11
Description : Introduction VI (Big O) Example 11 (6) on Page 48
-}
module Introduction.VI.Example11 where

import Prelude hiding (reverse)

-- | Note that this is highly contrived and not how this code would be written
--   in Haskell.  See 'reverse' for a Haskell implementation.
reverse :: [Int] -> [Int]
reverse (x:xs) | not (null xs) = last xs : reverse (init xs) ++ [x]
               | otherwise     = [x]
reverse []     = []

main :: IO ()
main = print $ reverse [0, 1, 2, 3, 4, 5]
