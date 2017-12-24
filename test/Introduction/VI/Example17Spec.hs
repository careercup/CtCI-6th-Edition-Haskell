{-|
Module      : Introduction.VI.Example17Spec
Description : Introduction VI (BigO) Example 17 (12) on Page 51---Tests
-}
module Introduction.VI.Example17Spec (main, spec) where

import Data.List ((\\), permutations)
import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (modifyMaxSize, prop)

import Introduction.VI.Example17 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $ modifyMaxSize (const 5) $
    prop "null (permutation s \\ permutations s)" (\ s -> null (permutation s \\ permutations s))
