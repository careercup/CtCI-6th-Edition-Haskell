{-|
Module      : Introduction.VI.Question10Spec
Description : Introduction.VI (Big O) Question 10 on Page 57---Tests
-}
module Introduction.VI.Question10Spec (main, spec) where

import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck ((==>), Positive (Positive))

import Introduction.VI.Question10 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    do prop "n < 1 ==> sumDigits n == 0" (\ n -> n < 1 ==> sumDigits n == 0)
       prop "Positive n ==> sumDigits n < 10 * length (show n)" (\ (Positive n) -> sumDigits n < 10 * length (show n))
