{-|
Module      : Introduction.VI.Example19Spec
Description : Introduction VI (Big O) Example 19 (14) on Page 53---Tests
-}
module Introduction.VI.Example19Spec (main, spec) where

import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (modifyMaxSize, prop)
import Test.QuickCheck ((==>))

import qualified Data.Numbers.Fibonacci as F (fib)

import Introduction.VI.Example19 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $ modifyMaxSize (const 10) $
    do prop "n < 0 ==> fib n == 0" (\ n -> n < 0 ==> fib n == 0)
       prop "n >= 0 ==> fib n == F.fib n" (\ n -> n >= 0 ==> fib n == F.fib n)
