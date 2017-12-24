{-|
Module      : Introduction.VI.Example16Spec
Description : Introduction VI (Big O) Example 16 (11) on Page 50---Tests
-}
module Introduction.VI.Example16Spec (main, spec) where

import Test.Hspec (describe, hspec, it, shouldBe, Spec)
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck ((==>), Positive (Positive))

import Introduction.VI.Example16 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    do prop "x < 0 ==> factorial x == -1" (\ x -> x < 0 ==> factorial x == -1)
       it "factorial 0 == 1" $ factorial 0 `shouldBe` 1
       prop "Positive x ==> factorial x == product [1..x]" (\ (Positive x) -> factorial x == product [1..x])

    
