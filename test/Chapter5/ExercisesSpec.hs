module Chapter5.ExercisesSpec where

import           Test.Hspec


-- Most of the tasks in this chapter needs to be tested in the GHCi Repl

i :: a -> a
i a = a

c :: a -> b -> a
c some value = some

c' :: a -> b -> b
c' some more = more

c'' :: b -> a -> b
c'' some more = some

r :: [a] -> [a]
r = undefined

co :: (b -> c) -> (a -> b) -> (a -> c)
co = undefined

a :: (a -> c) -> a -> a
a = undefined

a' :: (a -> b) -> a -> b
a' = undefined

---- The function below have some problems. Fix them to make them work again.

-- fstString :: [Char] ++ [Char]
-- fstString x = x ++ " in the rain"

-- sndString :: [Char] -> Char
-- sndString x = x ++ " over the rainbow"

-- sing = if (x > y) then fstString x or sndString y
--     where x = "Singin"
--           x = "Somewhere"

-- f :: Int -> String
-- f = undefined

-- g :: String -> Char
-- g = 'a'

-- h :: Int -> Char
-- h num = undefined

spec :: Spec
spec =
  describe "Chapter 5 Exercises" $ do
    it "should compile" $ "" `shouldBe` ""
--     describe "What should be the return value"  $ do
--    Types can be checked in GHCi
--       it "should be ???" $ (*9)6 `shouldBe` ???
--       it "should be ???" $ head [(0,"doge"),(1,"kitteh")] `shouldBe` ???
--       it "should be ???" $ head [(0 :: Integer ,"doge"),(1,"kitteh")] `shouldBe` ???
--       it "should be ???" $ (if False then True else False) `shouldBe` ???
--       it "should be ???" $ length [1, 2, 3, 4, 5] `shouldBe` ???
--       it "should be ???" $ (length [1, 2, 3, 4]) > (length "TACOCAT") `shouldBe` ???
--     describe "Given a type, write the function" $ do
--       it "should run without errors" $ i `shouldBe` ???
--       it "should run without errors" $ c `shouldBe` ???
--       it "should run without errors" $ c' `shouldBe` ???
--       it "should run without errors" $ c'' `shouldBe` ???
--       it "should run without errors" $ r "abc"  `shouldBe` ???
--       it "should run without errors" $ co `shouldBe` ???
--       it "should run without errors" $ a `shouldBe` ???
--       it "should run without errors" $ a' `shouldBe` ???
--     describe "Fix it" $ do
--       it "should sing the first string" $ fstString "Singing" `shouldBe` "Singing in the rain"
--       it "should sing the second string" $ sndString "Somewhere" `shouldBe` "Somewhere over the rainbow"
--       it "should sing the first song" $ sing `shouldBe` "Singing in the rain"
--    change the sing function to sing the second song
--       xit "should sing the second song" $ sing `shouldBe` "Somewhere over the rainbow"
--     describe "Type-Kwon-Do" $
--         it "should call h and return a" $ h 1 `shouldBe` 'a'
--      The rest of the examples should be tested in GHCi