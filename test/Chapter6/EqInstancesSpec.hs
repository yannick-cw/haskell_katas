module Chapter6.EqInstancesSpec where

import           Test.Hspec

newtype TisAnInteger =
  TisAn Integer
  deriving (Show)

instance Eq TisAnInteger where
  (==) (TisAn a) (TisAn b) = a == b

data Pair a =
  Pair a
       a
  deriving (Show)

instance Eq a => Eq (Pair a) where
  (==) (Pair a a') (Pair b b') = a == b && a' == b'

data Tuple a b =
  Tuple a
        b
  deriving (Show)

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple a b) (Tuple a' b') = a == a' && b == b'

data Which a
  = ThisOne a
  | ThatOne a
  deriving (Show)

instance Eq a => Eq (Which a) where
  (==) (ThisOne a) (ThisOne a') = a == a'
  (==) (ThatOne a) (ThatOne a') = a == a'
  (==) _ _                      = False

data EitherOr a b
  = LeftX a
  | RightX b
  deriving (Show)

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (LeftX a) (LeftX a')   = a == a'
  (==) (RightX a) (RightX a') = a == a'
  (==) _ _                    = False

checkEqAndNotEq :: Eq a => (a, a) -> Bool
checkEqAndNotEq (a, b) = (a == a) && (a /= b)

spec :: Spec
spec =
  describe "Eq instances" $ do
    it "should compile" $ "" `shouldBe` ""
    it "should work for TisAnInteger" $ (TisAn 4, TisAn 3) `shouldSatisfy` checkEqAndNotEq
    it "should work for Pair" $ (Pair 2 4, Pair 2 5) `shouldSatisfy` checkEqAndNotEq
    it "should work for Tuple" $ ((Tuple 3 'c'), (Tuple 3 'd')) `shouldSatisfy` checkEqAndNotEq
    it "should work for Which" $ (ThisOne 3, ThatOne 3) `shouldSatisfy` checkEqAndNotEq
    it "should work for EitherOr" $ (LeftX 'c', RightX 4) `shouldSatisfy` checkEqAndNotEq
