{-|
Module      : Introduction.VI.Question01Spec
Description : Introduction VI (Big O) Question 1 on Page 55---Tests
-}
module Introduction.VI.Question01Spec (main, spec) where

import Prelude hiding (product)

import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck (Positive (Positive))

import Introduction.VI.Question01 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    do prop "product a 0 == 0" (\ a -> product a 0 == 0)
       prop "Positive b ==> product a b == a * b" (\ a (Positive b) -> product a b == a * b)
