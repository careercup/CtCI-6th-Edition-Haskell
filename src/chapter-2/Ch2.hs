module Ch2 where

import Test.Hspec

ch2 :: IO ()
ch2 = hspec $
  describe "_______________________Chapter 2 tests_______________________" $
    it "should have tests" True

