{-|
Module      : Introduction.VI.Example01Spec
Description : Introduction VI (Big O) Example 1 on Page 40---Tests
-}
module Introduction.VI.Example01Spec (main, spec) where

import Prelude hiding (sum)

import qualified Prelude as P (sum)

import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck ((==>))
import Test.QuickCheck.Modifiers (Positive (Positive))

import Introduction.VI.Example01 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    do prop "x <= 0 ==> sum x == 0" (\ x -> x <= 0 ==> sum x == 0)
       prop "Posiitve x ==> sum x == Prelude.sum [1..x]" (\ (Positive x) -> sum x == P.sum [1..x])
