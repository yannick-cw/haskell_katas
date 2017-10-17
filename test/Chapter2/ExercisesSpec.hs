module Chapter2.ExercisesSpec where

import           Test.Hspec

x = y ^ 2
waxOn = x  * 5
y = z + 8
z = 7

triple x = x * 3

waxOff x = triple x

squareAndPi :: Integer -> Double
squareAndPi value = 3.14 * 25

spec :: Spec
spec =
  describe "Exercises Chapter 2" $ do
    it "should compile" $ "" `shouldBe` ""
    describe "Equivalent expressions" $ do
      it "should be true" $ (1 + 1) == 2 `shouldBe` True
      it "should be true" $ (10 ^ 2) == (10 + 9 * 10) `shouldBe` True
      it "should be false" $ (400 - 37) == ((-) 37 400) `shouldBe` False
      it "should be false" $ (2 * 5 + 18) == (2 * (5 + 18)) `shouldBe` False


    describe "More fun with functions" $ do
      it "1a expected to be" $ (1 + waxOn) `shouldBe` 1126
      it "1b expected to be" $ ((+10) waxOn) `shouldBe` 1135
      it "1c expected to be" $ ((-) 15 waxOn) `shouldBe` -1110
      it "1d expected to be" $ ((-) waxOn 15) `shouldBe` 1110
      it "should equal expected output" $ (triple waxOn) `shouldBe` 3375

    describe "Intermediate tests" $ do
      it "should multiply 3.14 with the square of a value" $ (squareAndPi 5) `shouldBe` (3.14 * 25)
      it "should do the correct math" $ 8 + 7 * 9 `shouldBe` 71
