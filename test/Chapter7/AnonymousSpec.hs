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

-- rewrite as lambda
addFive :: Int -> Int -> Int
addFive x y = (if x > y then y else x) + 5

-- rewrite to not use lambda
mflip :: (t2 -> t1 -> t) -> t1 -> t2 -> t
mflip f = \x -> \y -> f y x

spec :: Spec
spec =
  describe "Anonymous function" $ do
    it "should add one for odd" $ addOneIfOdd 3 `shouldBe` 4
    it "should not add one for even" $ addOneIfOdd 4 `shouldBe` 4
    it "should add five if x <= y" $ addFive 10 11 `shouldBe` 15
    it "should apply f to x and y" $ mflip (-) 10 5 `shouldBe` -5
