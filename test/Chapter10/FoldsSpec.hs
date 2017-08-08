module Chapter10.FoldsSpec where

import           Test.Hspec

sumList :: Int
sumList = foldl (+) 0 [1, 2, 3, 4, 5]

-- gives the fibonacci number for n
fibs :: Int -> Int
fibs n = 0

spec :: Spec
spec =
  describe "List" $ do
    it "write sumList with scan instead" $ sumList `shouldBe` 15
    xit "implement fibs using scanl and !! for list access" $ fibs 0 `shouldBe` 1
    xit "implement fibs using scanl and !! for list access" $ fibs 1 `shouldBe` 1
    xit "implement fibs using scanl and !! for list access" $ fibs 2 `shouldBe` 2
    xit "implement fibs using scanl and !! for list access" $ fibs 3 `shouldBe` 3
    xit "implement fibs using scanl and !! for list access" $ fibs 4 `shouldBe` 5
    xit "implement fibs using scanl and !! for list access" $ fibs 5 `shouldBe` 8
