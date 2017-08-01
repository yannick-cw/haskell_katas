module Chapter7.PatternMatchingSpec where

import           Test.Hspec

newtype Username =
  Username String

newtype AccountNumber =
  AccountNumber Integer

data User
  = UnregisteredUser
  | RegisteredUser Username
                   AccountNumber

--use pattern match to show user
showUser :: User -> String
showUser _ = undefined

f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f = undefined

--use compare and pattern match on it
compareInts :: Int -> Int -> String
compareInts = undefined

spec :: Spec
spec =
  describe "Pattern match" $ do
    xit "should show an unregistered user" $ showUser UnregisteredUser `shouldBe` "unreg"
    xit "should show an registered user" $
      showUser (RegisteredUser (Username "A") (AccountNumber 22)) `shouldBe` "Name: A Number: 22"
    xit "should transform tuples" $ f (1, 2, 3) (4, 5, 6) `shouldBe` ((1, 4), (3, 6))
    xit "should compare ints" $ compareInts 2 3 `shouldBe` "3 wins"
