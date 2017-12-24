{-|
Module      : Introduction.VI.Example21Spec
Description : Introduction VI (Big O) Example 21 (16) on Page 54---Tests
-}
module Introduction.VI.Example21Spec (main, spec) where

import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck ((==>))

import Introduction.VI.Example21 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    do prop "n < 1 ==> powersOf2 n == 0" (\ n -> n < 1 ==> powersOf2 n == [0])
       prop "powersOf2 n == powersOf 2 n" (\ n -> n >= 1 ==> powersOf2 n == takeWhile (<= n) (powersOf 2))

powersOf :: Int -> [Int]
powersOf b = 1 : map (b*) (powersOf b)
