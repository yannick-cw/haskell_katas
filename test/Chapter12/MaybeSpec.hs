module Chapter12.MaybeSpec where

import           Test.Hspec

myIterate :: (a -> a) -> a -> [a]
myIterate f a = a : myUnfoldr (Just . (\b -> (b, b)) . f) a

myUnfoldr :: (b -> Maybe (a, b)) -> b -> [a]
myUnfoldr f b = case f b of
      Just (a, b') -> a : myUnfoldr f b'
      Nothing -> []

spec :: Spec
spec =
  describe "Maybe" $ do
    it "implment myIterate" $ take 5 (myIterate (+ 1) 3) `shouldBe` [3, 4, 5, 6, 7]
    it "implement myUnfold" $ take 5 (myUnfoldr (\b -> Just (b, b + 2)) 0) `shouldBe` [0, 2, 4, 6, 8]
    it "implment myIterate with myUnfold" $ take 5 (myIterate (+ 1) 3) `shouldBe` [3, 4, 5, 6, 7]
