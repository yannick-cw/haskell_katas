module Chapter4.ExercisesSpec where
  
  import           Test.Hspec
  
  awesome = ["Papuchon", "curry", "Haskell"]
  alsoAwesome = ["Quake", "The Simons"]
  allAwesome = [awesome, alsoAwesome]
  
  x = 5
  
  isPalindrome :: (Eq a) => [a] -> Bool
  isPalindrome word = word == reverse word
  
  f :: (a, b) -> (c, d) -> ((b, d), (a, c))
  f tuple1 tuple2 = ((snd tuple1, snd tuple2), (fst tuple1, fst tuple2)) 
  
  myAbs :: Integer -> Integer
  myAbs x = if (x < 0) then -x else x
  
  spec :: Spec
  spec =
    describe "Chapter 4 Exercises" $ do
      it "should compile" $ "" `shouldBe` ""
      it "should get correct length" $ length [1, 2, 3, 4, 5] `shouldBe` 5
      it "should get correct length" $ length [(1, 2), (2, 3), (3, 4)] `shouldBe` 3
      it "should get correct length" $ length allAwesome `shouldBe` 2
      it "should get correct length" $ length (concat allAwesome) `shouldBe` 5

      describe "Which test throws an error and why. How can you fix the calculation" $ do
        it "Might throw an error" $ 6 / 3 `shouldBe` 2

      describe "What is the expected result and the type of it" $ do
        it "Should have the Type and result" $ (2 + 3 == 5) `shouldBe` True
        it "Should have the Type and result" $ (x + 3 == 5) `shouldBe` False
  
      describe "Which will work and why / why not" $ do
        it "should work" $ (length allAwesome == 2) `shouldBe` True
        it "should work" $ (length allAwesome + length awesome) `shouldBe` 5
        it "should work" $ ((8 == 8) && ('b' < 'a')) `shouldBe` False
  
      describe "Is it a Palindrome" $ do
        it "should NOT be a palindrome" $ (isPalindrome "Music") `shouldBe` False
        it "should be a palindrome" $ (isPalindrome "racecar") `shouldBe` True
  
      describe "the absolute value using `if-then-else`" $ do
        it "Should return the absolute value for positiv numbers" $ (myAbs 5) `shouldBe` 5
        it "Should return the absolute value for negative numbers" $ (myAbs $ -5) `shouldBe` 5
      
        it "Should rearrange the tuples with `fst` and `snd`" $ f (1, 2) (3, 4) `shouldBe` ((2,4), (1, 3))