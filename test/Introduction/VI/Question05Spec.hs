{-|
Module      : Introduction.VI.Question05Spec
Description : Introduction VI (Big O) Question 5 on Page 56
-}
module Introduction.VI.Question05Spec (main, spec) where

import Prelude hiding (sqrt)

import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck (Positive (Positive))

import Introduction.VI.Question05 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    do prop "Positive x ==> sqrt (x * x) == x" (\ (Positive x) -> sqrt (x * x) == x)
       prop "Positive x ==> sqrt (x * x + 1) == -1" (\ (Positive x) -> sqrt (x * x + 1) == -1)
