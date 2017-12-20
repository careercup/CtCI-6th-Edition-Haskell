module Ch1 where

import Test.Hspec

ch1 :: IO ()
ch1 = hspec $
  describe "_______________________Chapter 1 tests_______________________" $
    it "should have tests" True
