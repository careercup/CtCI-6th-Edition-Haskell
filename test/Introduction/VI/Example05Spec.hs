{-|
Module      : Introduction.VI.Example05Spec
Description : Introduction VI (Big O) Example 5 on Page 44---Tests
-}
module Introduction.VI.Example05Spec (main, spec) where

import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck ((==>), Positive (Positive))

import Introduction.VI.Example05 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    do prop "x <= 1 ==> f x == 1" (\ x -> x <= 1 ==> f x == 1)
       prop "(Positive x) ==> f x == 2 ^ (x - 1)" (\ (Positive x) -> f x == 2 ^ (x - 1))
