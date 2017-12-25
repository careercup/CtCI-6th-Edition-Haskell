{-|
Module      : Introduction.VI.Question06Spec
Description : Introduction VI (Big O) Question 6 on Page 56
-}
module Introduction.VI.Question06Spec (main, spec) where

import Prelude hiding (sqrt)

import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck (Positive (Positive))

import Introduction.VI.Question06 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    do prop "Positive x ==> sqrt (x * x) == x" (\ (Positive x) -> sqrt (x * x) == x)
       prop "Positive x ==> sqrt (x * x + 1) == -1" (\ (Positive x) -> sqrt (x * x + 1) == -1)
