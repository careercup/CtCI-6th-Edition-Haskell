{-|
Module       : Introduction.VI.Question12Spec
Introduction : Introduction VI (Big O) Question 12 on Page 58---Tests
-}
module Introduction.VI.Question12Spec (main, spec) where

import Data.List (intersect, sort)
import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)

import Introduction.VI.Question12 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  do describe "intersection" $
       describe "properties" $
         prop "intersection xs ys == length (xs `intersect` ys)" (\ xs ys -> intersection xs ys == length (xs `intersect` ys))

     describe "mergesort" $
       describe "properties" $
         prop "mergesort xs == sort xs" (\ xs -> mergesort xs == sort xs)
