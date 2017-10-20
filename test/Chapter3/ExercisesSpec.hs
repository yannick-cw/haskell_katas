module Chapter3.ExercisesSpec where

import Test.Hspec


rvrs :: String -> String
rvrs x = ((drop 9 x) ++ (" " ++ (take 2 (drop 6 x)))) ++ (" " ++ (take 5 x))

thirdLetter :: String -> Char
thirdLetter str = (!!) str 2

letterIndex :: Int -> Char
letterIndex x = head (drop x "Curry is awesome!")

spec :: Spec
spec =
  describe "Chapter 3 Exercises" $ do
    it "should compile" $ "" `shouldBe` ""

    describe "Reading syntax" $ do
      it "1a returns expected outcome" $ (concat [[1, 2, 3], [4, 5, 6]]) `shouldBe` [1, 2, 3, 4, 5, 6]
      it "1b returns expected outcome" $ ([1, 2, 3] ++ [4, 5, 6]) `shouldBe` [1, 2, 3, 4, 5, 6]
      it "1c returns expected outcome" $ ((++) "hello" " world") `shouldBe` "hello world"
      it "1d returns expected outcome" $ (["hello" ++ " world"]) `shouldBe` ["hello world"]
      it "1e returns expected outcome" $ ((!!) "hello" 4) `shouldBe` 'o'
      it "1g returns expected outcome" $ (take 4 "lovely") `shouldBe` "love"
      it "1h returns expected outcome" $ (take 3 "awesome") `shouldBe` "awe"

      it "2a returns expected outcome" $ (concat [[1 * 6], [2 * 6], [3 * 6]]) `shouldBe` [6, 12, 18]
      it "2b returns expected outcome" $ ("rain" ++ drop 2 "elbow") `shouldBe` "rainbow"
      it "2c returns expected outcome" $ (10 * head [1, 2, 3]) `shouldBe` 10
      it "2d returns expected outcome" $ ((take 3 "Julie") ++ (tail "yes")) `shouldBe` "Jules"
      it "2e returns expected outcome" $ (concat [tail [1, 2, 3], tail [4, 5, 6], tail [7, 8, 9]]) `shouldBe` [2, 3, 5, 6, 8, 9]

      describe "Building functions" $ do
        it "Match the 2 Strings" $ ("Curry is awesome" ++ "!") `shouldBe` "Curry is awesome!"
        it "Use `take` and `drop` to match the 2 Strings" $ (drop 4 (take 5 "Curry is awesome!")) `shouldBe` "y"
        it "Use `drop` to match the 2 Strings" $ (drop 9 "Curry is awesome!") `shouldBe` "awesome!"

        it "Should return the third letter of a string" $ thirdLetter "Curry on" `shouldBe` 'r'
        it "Should the nth letter of a string" $ letterIndex 2 `shouldBe` 'r'
        it "should reverse the sentence `Curry is awesome` using only `drop` and `take`" $ rvrs "Curry is awesome" `shouldBe` "awesome is Curry"
