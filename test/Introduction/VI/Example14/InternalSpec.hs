{-|
Module       : Introduction.VI.Example14.InternalSpec
Introduction : Introduction VI (Big O) Tree Implementation---Tests
-}
module Introduction.VI.Example14.InternalSpec (main, spec) where

import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)

import Introduction.VI.Example14.Internal

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    prop "isBalanced . fromList" $ isBalanced . (fromList :: [Int] -> Tree Int)
