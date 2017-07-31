module Chapter6.EqInstancesSpec where

import           Test.Hspec

newtype TisAnInteger =
  TisAn Integer
  deriving (Show)

data Pair a =
  Pair a
       a
  deriving (Show)

data Tuple a b =
  Tuple a
        b
  deriving (Show)

data Which a
  = ThisOne a
  | ThatOne a
  deriving (Show)

data EitherOr a b
  = LeftX a
  | RightX b
  deriving (Show)

checkEqAndNotEq :: Eq a => (a, a) -> Bool
checkEqAndNotEq (a, b) = (a == a) && (a /= b)

spec :: Spec
spec =
  describe "Eq instances" $ do
    it "should compile" $ "" `shouldBe` ""
--    it "should work for TisAnInteger" $ (TisAn 4, TisAn 3) `shouldSatisfy` checkEqAndNotEq
--    it "should work for Pair" $ (Pair 2 4, Pair 2 5) `shouldSatisfy` checkEqAndNotEq
--    it "should work for Tuple" $ ((Tuple 3 'c'), (Tuple 3 'd')) `shouldSatisfy` checkEqAndNotEq
--    it "should work for Which" $ (ThisOne 3, ThatOne 3) `shouldSatisfy` checkEqAndNotEq
--    it "should work for EitherOr" $ (LeftX 'c', RightX 4) `shouldSatisfy` checkEqAndNotEq
