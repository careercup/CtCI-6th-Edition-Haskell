{-|
Module      : Introduction.VI.Question09Spec
Description : Introduction VI (Big O) Question 9 on Page 57
-}
module Introduction.VI.Question09Spec (main, spec) where

import Data.Array (listArray)
import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck ((==>))

import Introduction.VI.Question09 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    prop "copyArray a == a" (\ es -> length es > 0 ==> copyArray (listArray (1, length es) es) == listArray (1, length es) es)
