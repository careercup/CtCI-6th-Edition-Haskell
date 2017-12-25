{-|
Module      : Introduction.VI.Question02Spec
Description : Introduction VI (Big O) Question 2 on Page 55---Tests
-}
module Introduction.VI.Question02Spec (main, spec) where

import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck ((==>), Positive (Positive))

import Introduction.VI.Question02 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    do prop "b < 0 ==> power a b == 0" (\ a b -> b < 0 ==> power a b == 0)
       prop "power a 0 == 1" (\ a -> power a 0 == 1)
       prop "Positive b ==> power a b == a ^ b" (\ a (Positive b) -> power a b == a ^ b)
