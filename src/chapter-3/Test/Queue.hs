module Test.Queue where

import Test.Hspec
import Data.Queue


emptyQueue :: Queue a
emptyQueue = Queue [] []

exQueue :: Queue Int
exQueue = Queue [1,2,3,4,5] []

enqueueQueue :: Queue Int
enqueueQueue = enqueue 3 (enqueue 2 (enqueue 1 emptyQueue))

dequeueQueue :: Queue Int
dequeueQueue = dequeue (dequeue enqueueQueue)

testQueue :: SpecWith ()
testQueue =
  describe "Queue" $ do
    it "should maintain FIFO order" $ do
      peek enqueueQueue `shouldBe` Just 1
      peek dequeueQueue `shouldBe` Just 3
    describe "Eq instance" $
      it "should maintain equality if regardless of enqueue/dequeue state" $
        Queue [1,2,3] [] `shouldBe` (Queue [] [3,2,1] :: Queue Int)
    describe "mkQueue" $
      it "should create a single element queue" $
        mkQueue 1 `shouldBe` (Queue [1] [] :: Queue Int)
    describe "enqueue" $
      it "should add an element to the queue" $
        enqueue 1 emptyQueue `shouldBe` (Queue [1] [] :: Queue Int)
    describe "dequeue" $
      it "should remove an element from the queue" $
        dequeue exQueue `shouldBe` Queue [] [4,3,2,1]
    describe "peek" $ do
      it "should return the next element in the queue if it exists" $
        peek exQueue `shouldBe` Just 5
      it "should not crash on an empty queue" $
        peek emptyQueue `shouldBe` (Nothing :: Maybe Int)
    describe "isEmpty" $
      it "should tell if a given queue is empty" $ do
        isEmpty emptyQueue `shouldBe` True
        isEmpty exQueue `shouldBe` False


