module Chapter2.ExercisesSpec where

import           Test.Hspec

x = y ^ 2
waxOn = x * 5
y = z + 8
z = 7

triple x = x * 3

waxOff x = triple x

squareAndPi :: Integer -> Double
squareAndPi value = undefined

spec :: Spec
spec =
  describe "Exercises Chapter 2" $ do
    it "should compile" $ "" `shouldBe` ""
--    describe "Equivalent expressions" $ do
--      it "1 should be true or false" $ (1 + 1) == 2 `shouldBe`  -- Enter True or False
--      it "2 should be true or false" $ (10 ^ 2) == (10 + 9 * 10) `shouldBe`  -- Enter True or False
--      it "3 should be true or false" $ (400 - 37) == ((-) 37 400) `shouldBe` -- Enter True or False
--      -- Next test might throw an error.
--      it "4 should be true or false" $ (100 `div` 3) == (100 / 3) `shouldBe` -- Enter True or False
--      it "5 should be true or false" $ (2 * 5 + 18) == (2 * (5 + 18)) `shouldBe` -- Enter True or False


--    describe "More fun with functions" $ do
--      it "1a What do you expect" $ (1 + waxOn) `shouldBe`   -- Enter your expected value
--      it "1b What do you expect" $ ((+10) waxOn) `shouldBe` -- Enter your expected value
--      it "1c What do you expect" $ ((-) 15 waxOn) `shouldBe` -- Enter your expected value
--      it "1d What do you expect" $ ((-) waxOn 15) `shouldBe` -- Enter your expected value
--      it "What is the expected output" $ (triple waxOn) `shouldBe` -- Enter your expected value
--      -- When the previous tests passed Rewrite waxOn as a function with a where clause an run tests again
--      it "What is the expected output" $ (waxOff waxOn) `shouldBe` -- Enter your expected value

--    describe "Intermediate tests" $ do
--      it "should multiply 3.14 with the square of a value" $ (squareAndPi 5) `shouldBe` (3.14 * 25)
--      it "should do the correct math" $ 8 + 7 * 9 `shouldBe` 135
