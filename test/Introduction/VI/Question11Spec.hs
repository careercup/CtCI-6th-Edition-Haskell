{-|
Module       : Introduction.VI.Question11Spec
Introduction : Introduction VI (Big O) Question 11 on Page 57---Tests
-}
module Introduction.VI.Question11Spec (main, spec) where

import Test.Hspec (describe, hspec, it, shouldBe, Spec)

import Introduction.VI.Question11 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "printSortedStrings" $
    do it "1 character strings: 26" $ length (printSortedStrings 1) `shouldBe` 26
       it "2 character strings: 351" $ length (printSortedStrings 2) `shouldBe` 351
       it "3 character strings: 3276" $ length (printSortedStrings 3) `shouldBe` 3276
