module Chapter9.ListsSpec where

import           Test.Hspec

safeTail :: [a] -> Maybe [a]
safeTail = undefined

useRangeInstead :: [Integer]
useRangeInstead = [1, 2, 3, 4, 5, 6]

myWords :: String -> [String]
myWords = undefined

squares :: [Int]
squares = fmap (^ 2) [1 .. 3]

squareEvens :: [Int]
squareEvens = fmap (^ 2) (filter (\i -> rem i 2 == 0) [1 .. 4])

spec :: Spec
spec =
  describe "List" $ do
    it "use range instead" $ useRangeInstead `shouldBe` [1, 2, 3, 4, 5, 6]
    xit "implement safeTail" $ safeTail [1, 2] `shouldBe` Just [2]
    xit "implement myWods with takeWhile and dropWhile" $ myWords fun `shouldBe` funList
    it "use list comprehension" $ squares `shouldBe` [1, 4, 9]
    it "use list comprehension with predicate" $ squareEvens `shouldBe` [4, 16]
  where
    fun = "all i wanna do is have some fun"
    funList = ["all", "i", "wanna", "do", "is", "have", "some", "fun"]
