{-|
Module      : Introduction.VI.Question11
Description : Introduction VI (Big O) Question 11 on Page 57
-}
module Introduction.VI.Question11 where

printSortedStrings :: Int -> [String]
printSortedStrings n = printSortedStrings' n ""

printSortedStrings' :: Int -> String -> [String]
printSortedStrings' 0 p = [ p | isInOrder p ]
printSortedStrings' n p = concatMap (printSortedStrings' $ n - 1) [ p ++ [c] | c <- ['a'..'z'] ]

isInOrder :: String -> Bool
isInOrder s = not $ any (uncurry (>)) $ zip s $ tail s

main :: IO ()
main = print $ printSortedStrings 3
