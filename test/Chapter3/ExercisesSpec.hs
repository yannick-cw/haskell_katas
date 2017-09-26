module Chapter3.ExercisesSpec where

import           Test.Hspec


rvrs :: String -> String
rvrs sentence = undefined

thirdLetter :: String -> Char
thirdLetter = undefined

letterIndex :: Int -> Char
letterIndex x = undefined -- "Curry is awesome!"

spec :: Spec
spec =
  describe "Chapter 3 Exercises" $ do
-- Intermediate Exercises currently still missing
    it "should compile" $ "" `shouldBe` ""

--    describe "Reading syntax" $ do
{-      Before commenting in the following tests read the syntax and make sure
      that the tests are correct. Otherwise correct them -}

--      it "1a your expected outcome" $ (concat [[1, 2, 3], [4, 5, 6]]) `shouldBe` ???
--      it "1b your expected outcome" $ (++ [1, 2, 3] [4, 5, 6]) `shouldBe` ???
--      it "1c your expected outcome" $ ((++) "hello" " world") `shouldBe` ???
--      it "1d your expected outcome" $ (["hello" ++ " world]) `shouldBe` ???
--      it "1e your expected outcome" $ (4 !! "hello") `shouldBe` ???
--      it "1f your expected outcome" $ ((!!) "hello" 4) `shouldBe` ???
--      it "1g your expected outcome" $ (take "4 lovely") `shouldBe` ???
--      it "1h your expected outcome" $ (take 3 "awesome") `shouldBe` ???

--      it "2a your expected outcome" $ (concat [[1 * 6], [2 * 6], [3 * 6]]) `shouldBe` ???
--      it "2b your expected outcome" $ ("rain" ++ drop 2 "elbow") `shouldBe` ???
--      it "2c your expected outcome" $ (10 * head [1, 2, 3]) `shouldBe` ???
--      it "2d your expected outcome" $ ((take 3 "Julie") ++ (tail "yes")) `shouldBe` ???
--      it "2e your expected outcome" $ (concat [tail [1, 2, 3], tail [4, 5, 6], tail [7, 8, 9]]) `shouldBe` ???
--    describe "Building functions" $ do
--        it "Match the 2 Strings" $ ("Curry is awesome") `shouldBe` "Curry is awesome!"
--        it "Use `take` and `drop` to match the 2 Strings" $ ("Curry is awesome!") `shouldBe` "y"
--        it "Use `take` and `drop` to match the 2 Strings" $ ("Curry is awesome!") `shouldBe` "awesome!"

--        it "Should return the third letter of a string" $ thirdLetter "Curry on" `shouldBe` 'r'
--        it "Should the nth letter of a string" $ letterIndex 2 `shouldBe` 'r'
--        it "should reverse the sentence `Curry is awesome`" $ rvrs "Curry is awesome" `shouldBe` "awesome is Curry"
