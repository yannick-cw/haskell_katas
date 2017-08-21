module Chapter9.ListsSpec where

import           Test.Hspec

safeTail :: [a] -> Maybe [a]
safeTail []     = Nothing
safeTail (_:xs) = Just xs

useRangeInstead :: [Integer]
useRangeInstead = [1 .. 6]

myWords :: String -> [String]
myWords [] = []
myWords s = takeWhile (/= ' ') s : (myWords . drop 1 . dropWhile (/= ' ')) s

squares :: [Int]
squares = [x ^ 2 | x <- [1 .. 3]]

squareEvens :: [Int]
squareEvens = [x ^ 2 | x <- [1 .. 4], rem x 2 == 0]

spec :: Spec
spec =
  describe "List" $ do
    it "use range instead" $ useRangeInstead `shouldBe` [1, 2, 3, 4, 5, 6]
    it "implement safeTail" $ safeTail [1, 2] `shouldBe` Just [2]
    it "implement myWods with takeWhile and dropWhile" $ myWords fun `shouldBe` funList
    it "use list comprehension" $ squares `shouldBe` [1, 4, 9]
    it "use list comprehension with predicate" $ squareEvens `shouldBe` [4, 16]
  where
    fun = "all i wanna do is have some fun"
    funList = ["all", "i", "wanna", "do", "is", "have", "some", "fun"]
