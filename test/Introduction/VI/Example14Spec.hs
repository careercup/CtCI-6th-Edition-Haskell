{-|
Module       : Introduction.VI.Example14Spec
Introduction : Introduction VI (Big O) Example 14 (9) on Page 49---Tests
-}
module Introduction.VI.Example14Spec (main, spec) where

import Prelude hiding (sum)

import qualified Prelude as P (sum)

import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)

import Introduction.VI.Example14 hiding (main)
import Introduction.VI.Example14.Internal

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    prop "sum (fromList xs) == P.sum xs" (\ xs -> sum (fromList xs) == P.sum xs)
