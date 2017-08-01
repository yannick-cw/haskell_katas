module Chapter7.GuardsSpec where

import           Test.Hspec

myAbs :: Integer -> Integer
myAbs x =
  if x < 0
    then (-x)
    else x

newtype Age =
  Age Integer

data User
  = UnregisteredUser
  | RegisteredUser Age

userOlder10 :: User -> String
userOlder10 (RegisteredUser (Age age)) =
  if age >= 9
    then "Yes"
    else "Nono"
userOlder10 _ = "Nono"

avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x
  | x / 100 >= 0.9 = 'A'
  | x / 100 >= 0.8 = 'B'
  | x / 100 >= 0.7 = 'C'
  | x / 100 >= 0.59 = 'D'
  | otherwise = 'F'

spec :: Spec
spec =
  describe "Guard " $ do
    it "rewrite myAbs with guards" $ myAbs (-11) `shouldBe` 11
    it "rewrite userOlder10 with guards and pattern match" $ userOlder10 (RegisteredUser (Age 22)) `shouldBe` "Yes"
    it "rewrite userOlder10 with guards and pattern match" $ userOlder10 (RegisteredUser (Age 8)) `shouldBe` "Nono"
    it "refactore inlined x / 100 from guard" $ avgGrade 77 `shouldBe` 'C'
