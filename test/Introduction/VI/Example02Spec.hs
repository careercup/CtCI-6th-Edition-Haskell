{-|
Module      : Introduction.VI.Example02Spec
Description : Introduction VI (Big O) Example 2 on Page 41---Tests
-}
module Introduction.VI.Example02Spec (main, spec) where

import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck ((==>))
import Test.QuickCheck.Modifiers (Positive (Positive))

import Introduction.VI.Example02 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    do prop "x <= 0 ==> pairSumSequence x == 0" (\ x -> x <= 0 ==> pairSumSequence x == 0)
       prop "Positive x ==> pairSumSequence x == (x + 2) * x" (\ (Positive x) -> pairSumSequence x == (x + 2) * x)
