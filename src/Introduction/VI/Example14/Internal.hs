{-|
Module      : Introduction.VI.Example14.Internal
Description : Introduction VI (Big O) Tree Implementation
-}
module Introduction.VI.Example14.Internal where

import Data.List (sort)

data Tree a = Tree (Tree a) a (Tree a)
            | Empty
  deriving (Show)

fromList :: (Ord a) => [a] -> Tree a
fromList [] = Empty
fromList xs = Tree (fromList $ take m $ sort xs)
                   (sort xs !! m)
                   (fromList $ drop (m + 1) $ sort xs)
  where m   = length xs `quot` 2

isBalanced :: Tree a -> Bool
isBalanced (Tree l _ r) = isBalanced l && isBalanced r && abs (depth l - depth r) < 2
isBalanced Empty        = True

depth :: Tree a -> Int
depth (Tree l _ r) = max (depth l) (depth r) + 1
depth Empty        = 0
