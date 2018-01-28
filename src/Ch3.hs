module Ch3 where

import Test.QuickCheck
import Test.Hspec
import Ch3.Test.Stack
import Ch3.Test.Queue
import Ch3.Test.MinStack

ch3 :: IO ()
ch3 = hspec $ do
  describe "_______________________Chapter 3 tests_______________________" $ do
    testStack
    testQueue
    testMinStack
