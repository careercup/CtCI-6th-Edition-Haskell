{-|
Module      : Introduction.VI.Example17
Description : Introduction VI (Big O) Example 17 (12) on Page 51
-}
module Introduction.VI.Example17 where

import Data.List (delete)

permutation :: String -> [String]
permutation = flip permutation' ""

permutation' :: String -> String -> [String]
permutation' "" p = [p]
permutation' s p  = concat [ permutation' (delete c s) (c:p) | c <- s ]

main :: IO ()
main = mapM_ putStrLn $ permutation "abc"
