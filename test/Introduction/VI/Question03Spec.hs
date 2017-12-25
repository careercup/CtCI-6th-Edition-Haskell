{-|
Module      : Introduction.VI.Question03Spec
Description : Introduction VI (Big O) Question 3 on Page 56---Tests
-}
module Introduction.VI.Question03Spec (main, spec) where

import Prelude hiding (mod)

import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck ((==>))

import Introduction.VI.Question03 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    prop "b <= 0 ==> mod a b == -1" (\ a b -> b <= 0 ==> mod a b == -1)
