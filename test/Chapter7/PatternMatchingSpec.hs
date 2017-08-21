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
showUser user =
  case user of
    UnregisteredUser -> "unreg"
    (RegisteredUser (Username name) (AccountNumber number)) -> "Name: " ++ name ++ " Number: " ++ show number

f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f t1 t2 =
  case (t1, t2) of
    ((a, b, c), (d, e, f)) -> ((a, d), (c, f))

--use compare and pattern match on it
compareInts :: Int -> Int -> String
compareInts i i' =
  case compare i i' of
    LT -> show i ++ " wins"
    EQ -> "=="
    GT -> show i' ++ " wins"

spec :: Spec
spec =
  describe "Pattern match" $ do
    it "should show an unregistered user" $ showUser UnregisteredUser `shouldBe` "unreg"
    it "should show an registered user" $
      showUser (RegisteredUser (Username "A") (AccountNumber 22)) `shouldBe` "Name: A Number: 22"
    it "should transform tuples" $ f (1, 2, 3) (4, 5, 6) `shouldBe` ((1, 4), (3, 6))
    xit "should compare ints" $ compareInts 2 3 `shouldBe` "3 wins"
