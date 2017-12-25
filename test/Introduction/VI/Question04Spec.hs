{-|
Module      : Introduction.VI.Question04Spec
Description : Introduction VI (Big O) Question 4 on Page 56
-}
module Introduction.VI.Question04Spec (main, spec) where

import Prelude hiding (div)

import qualified Prelude as P (div)

import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck ((==>), Positive (Positive))

import Introduction.VI.Question04 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    do -- Negative values for b lead to an infinite loop.
       prop "a < b ==> div a b == 0" (\ a b -> a < b ==> div a b == 0)
       prop "Positive a ==> div a a == 1" (\ (Positive a) -> div a a == 1)
       prop "a > Positive b ==> div a b == P.div a b" (\ a (Positive b) -> a > b ==> div a b == P.div a b)
