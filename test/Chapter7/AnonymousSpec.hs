module Chapter7.AnonymousSpec where

import           Test.Hspec

-- replace where function with anonymous function
addOneIfOdd :: Int -> Int
addOneIfOdd n =
  if odd n
    then f n
    else n
  where
    f n = n + 1

spec :: Spec
spec =
  describe "Anonymous function" $ do
    it "should add one for odd" $ addOneIfOdd 3 `shouldBe` 4
    it "should not add one for even" $ addOneIfOdd 4 `shouldBe` 4
