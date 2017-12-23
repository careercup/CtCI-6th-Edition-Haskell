{-|
Module       : Introduction.VI.Example11Spec
Introduction : Introduction VI (Big O) Example 11 (6) on Page 48---Tests
-}
module Introduction.VI.Example11Spec (main, spec) where

import Prelude hiding (reverse)

import qualified Prelude as P (reverse)

import Test.Hspec (describe, hspec, Spec)
import Test.Hspec.QuickCheck (prop)

import Introduction.VI.Example11 hiding (main)

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "properties" $
    prop "reverse xs == P.reverse xs" (\ xs -> reverse xs == P.reverse xs) 
