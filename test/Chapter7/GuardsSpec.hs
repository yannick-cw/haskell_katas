module Chapter7.GuardsSpec where

import           Test.Hspec

myAbs :: Integer -> Integer
myAbs x
  | x < 0 = -x
  | otherwise = x

newtype Age =
  Age Integer

data User
  = UnregisteredUser
  | RegisteredUser Age

userOlder10 :: User -> String
userOlder10 user =
  case user of
    (RegisteredUser (Age age)) | age >= 9 -> "Yes"
    _ -> "Nono"

avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x
  | divHun >= 0.9 = 'A'
  | divHun >= 0.8 = 'B'
  | divHun >= 0.7 = 'C'
  | divHun >= 0.59 = 'D'
  | otherwise = 'F'
  where
    divHun = x / 100

spec :: Spec
spec =
  describe "Guard " $ do
    it "rewrite myAbs with guards" $ myAbs (-11) `shouldBe` 11
    it "rewrite userOlder10 with guards and pattern match" $ userOlder10 (RegisteredUser (Age 22)) `shouldBe` "Yes"
    it "rewrite userOlder10 with guards and pattern match" $ userOlder10 (RegisteredUser (Age 8)) `shouldBe` "Nono"
    it "refactore inlined x / 100 from guard" $ avgGrade 77 `shouldBe` 'C'
