{-|
Module      : Introduction.VI.Example03Spec
Description : Introduction VI (Big O) Example 3 on Page 41---Tests
-}
module Introduction.VI.Example03Spec (main, spec) where

import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck ((==>))

import Introduction.VI.Example03 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    prop "not (null xs) ==> minAndMax1 xs == minAndMax2 xs" (\ xs -> not (null xs) ==> minAndMax1 xs == minAndMax2 xs)
