{-|
Module      : Introduction.VI.Example15Spec
Description : Introduction VI (Big O) Example 15 (10) on Page 50---Tests
-}
module Introduction.VI.Example15Spec (main, spec) where

import Test.Hspec (describe, hspec, it, Spec)
import Test.Hspec.QuickCheck (prop)
import Test.QuickCheck ((==>))

import qualified Data.Numbers.Primes as P (isPrime)

import Introduction.VI.Example15 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  do describe "incorrect for parity" $
       do it "isPrime 0 == True" $ isPrime 0
          it "isPrime 1 == True" $ isPrime 1
          it "isPrime 2 == False" $ not (isPrime 2)

     describe "properties" $
       prop "n > 2 ==> isPrime n == P.isPrime n" (\ n -> n > 2 ==> isPrime n == P.isPrime n)
