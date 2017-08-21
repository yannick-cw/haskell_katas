module Chapter10.FoldsSpec where

import           Test.Hspec

sumList :: Int
sumList = last (scanl (+) 0 [1, 2, 3, 4, 5])

-- gives the fibonacci number for n
fibs :: Int -> Int
fibs n = fibsStream !! n

fibsStream :: [Int]
fibsStream = 1 : scanl (+) 1 fibsStream

spec :: Spec
spec =
  describe "List" $ do
    it "write sumList with scan instead" $ sumList `shouldBe` 15
    it "implement fibs using scanl and !! for list access" $ fibs 0 `shouldBe` 1
    it "implement fibs using scanl and !! for list access" $ fibs 1 `shouldBe` 1
    it "implement fibs using scanl and !! for list access" $ fibs 2 `shouldBe` 2
    it "implement fibs using scanl and !! for list access" $ fibs 3 `shouldBe` 3
    it "implement fibs using scanl and !! for list access" $ fibs 4 `shouldBe` 5
    it "implement fibs using scanl and !! for list access" $ fibs 5 `shouldBe` 8
