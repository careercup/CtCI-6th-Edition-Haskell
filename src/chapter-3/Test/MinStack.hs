module Test.MinStack where

import Test.QuickCheck
import Test.Hspec
import Questions.MinStack
import qualified Data.Stack as S

exStack = push 1 (push 7 (push 2 (push 6 (mkMinStack 9))))

testMinStack :: SpecWith ()
testMinStack = 
  describe "MinStack" $ do
    describe "mkMinStack" $
      it "should create a MinStack" $
        (MinStack (S.mkStack 1) (S.mkStack 1) :: MinStack Int) `shouldBe` mkMinStack 1
    describe "smin" $
      it "should return the current min" $
        smin exStack `shouldBe` (Just 1 :: Maybe Int)
    describe "push and pop" $
      it "should maintain min" $ do
        smin (push 0 exStack) `shouldBe` (Just 0 :: Maybe Int)
        smin (pop exStack) `shouldBe` (Just 2 :: Maybe Int)

