module Chapter12.MaybeSpec where

import           Test.Hspec

myIterate :: (a -> a) -> a -> [a]
myIterate = undefined

myUnfoldr :: (b -> Maybe (a, b)) -> b -> [a]
myUnfoldr f b = undefined

spec :: Spec
spec =
  describe "Maybe" $ do
    xit "implment myIterate" $ take 5 (myIterate (+ 1) 3) `shouldBe` [3, 4, 5, 6, 7]
    xit "implement myUnfold" $ take 5 (myUnfoldr (\b -> Just (b, b + 2)) 0) `shouldBe` [0, 2, 4, 6, 8]
    xit "implment myIterate with myUnfold" $ take 5 (myIterate (+ 1) 3) `shouldBe` [3, 4, 5, 6, 7]
