module Chapter4.ExercisesSpec where

import           Test.Hspec

awesome = ["Papuchon", "curry", "Haskell"]
alsoAwesome = ["Quake", "The Simons"]
allAwesome = [awesome, alsoAwesome]

x = 5

isPalidrom :: (Eq a) => [a] -> Bool
isPalidrom word = undefined

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f = undefined

myAbs :: Integer -> Integer
myAbs undefined

spec :: Spec
spec =
  describe "Chapter 4 Exercises" $ do
    it "should compile" $ "" `shouldBe` ""
--    it "What is the result of length" $ length [1, 2, 3, 4, 5] `shouldBe` ???
--    it "What is the result of length" $ length [(1, 2), (2, 3), (3, 4)] `shouldBe` ???
--    it "What is the result of length" $ length allAwesome `shouldBe` ???
--    it "What is the result of length" $ length (concat allAwesome) `shouldBe` ???

--    describe "Which test throws an error and why. How can you fix the calculation" $ do
--      it "Might throw an error" $ 6 / 3 `shouldBe` 2
--      it "Might throw an error" $ 6 / length [1, 2, 3] `shouldBe` 2

--    describe "What is the expected result and the type of it" $ do
--      it "Should have the Type and result?" $ (2 + 3 == 5) `shouldBe` ???
--      it "Should have the Type and result?" $ (x + 3 == 5) `shouldBe` ???

--    describe "Which will work and why / why not" $ do
--      it "Should it work?" $ (length allAwesome == 2) `shouldBe` ???
--      it "Should it work?" $ (length [1, 'a', 3, 'b']) `shouldBe` ???
--      it "Should it work?" $ (length allAwesome + length awesome) `shouldBe` ???
--      it "Should it work?" $ ((8 == 8) && ('b' < 'a')) `shouldBe` ???
--      it "Should it work?" $ ((8 == 8) && 9) `shouldBe` ???

--    describe "Is it a Palidrom" $ do
--      it "should be a palidrom" $ (isPalidrom "Music") `shouldBe` False
--      it "should NOT be a palidrom" $ (isPalidrom "racecar") `shouldBe` True

--    describe "the absolute value using `if-then-else`" $ do
--      it "Should return the absolute value for positiv numbers" $ (myAbs 5) `shouldBe` 5
--      it "Should return the absolute value for negative numbers" $ (myAbs $ -5) `shouldBe` 5

--    it "Should rearrange the tuples with `fst` and `snd`" $ f (1, 2) (3, 4) `shouldBe` ((2,4), (1, 3))