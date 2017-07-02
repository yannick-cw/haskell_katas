module EqInstances where

import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

data TisAnInteger =
  TisAn Integer deriving Show

data Pair a =
  Pair a a deriving Show

data Tuple a b =
 Tuple a b deriving Show

data Which a =
    ThisOne a
  | ThatOne a deriving Show

data EitherOr a b =
    LeftX a
  | RightX b deriving Show

checkEqAndNotEq :: Eq a => (a, a) -> Bool
checkEqAndNotEq (a, b) = (a == a) && (a /= b)

spec :: IO ()
spec = hspec $ do
  describe "Eq instances" $ do
--    it "should work for TisAnInteger" $ do
--        (TisAn 4, TisAn 3) `shouldSatisfy` checkEqAndNotEq
--
--    it "should work for Pair" $ do
--        (Pair 2 4, Pair 2 5) `shouldSatisfy` checkEqAndNotEq
--
--    it "should work for Tuple" $
--      ((Tuple 3 'c'), (Tuple 3 'd')) `shouldSatisfy` checkEqAndNotEq
--
--    it "should work for Which" $
--      (ThisOne 3, ThatOne 3) `shouldSatisfy` checkEqAndNotEq
--
--    it "should work for EitherOr" $ do
--      (LeftX 'c', RightX 4) `shouldSatisfy` checkEqAndNotEq
