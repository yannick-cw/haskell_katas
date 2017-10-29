module Chapter5.ExercisesSpec where
    
    import           Test.Hspec

    i :: a -> a
    i a = a
    
    c :: a -> b -> a
    c some value = some
    
    c' :: a -> b -> b
    c' some more = more
    
    c'' :: b -> a -> b
    c'' some more = some
    
    r :: [a] -> [a]
    r x = x
    
    co :: (b -> c) -> (a -> b) -> (a -> c)
    co = undefined

    a :: (a -> c) -> a -> a
    a = undefined
    
    a' :: (a -> b) -> a -> b
    a' = undefined

    fstString :: String -> String
    fstString x = x ++ " in the rain"
    
    sndString :: String -> String
    sndString x = x ++ " over the rainbow"
    
    sing = if x < y then fstString x else sndString y
      where
          x = "Singing"
          y = "Somewhere"
    
    sing2 = if x > y then fstString x else sndString y
      where 
          x = "Singing"
          y = "Somewhere"

    f :: Int -> String
    f x = if x == 1 then "one" else "not one"
    
    g :: String -> Char
    g str = head str
    
    h :: Int -> Char
    h num = "Hello" !! num

    spec :: Spec
    spec =
      describe "Chapter 5 Exercises" $ do
        it "should compile" $ "" `shouldBe` ""
        describe "What should be the return value"  $ do
          it "should be correct" $ (*9)6 `shouldBe` 54
          it "should be correct" $ head [(0, "doge"), (1, "kitteh")] `shouldBe` (0, "doge")
          it "should be correct" $ head [(0 :: Integer ,"doge"),(1,"kitteh")] `shouldBe` (0, "doge")
          it "should be correct" $ (if False then True else False) `shouldBe` False
          it "should be correct" $ length [1, 2, 3, 4, 5] `shouldBe` 5
          it "should be correct" $ length [1, 2, 3, 4] > length "TACOCAT" `shouldBe` False
        describe "Given a type, write the function" $ do
          it "should run without errors" $ i 0 `shouldBe` 0
          it "should run without errors" $ c 1 2 `shouldBe` 1
          it "should run without errors" $ c' 1 2 `shouldBe` 2
          it "should run without errors" $ c'' 1 2 `shouldBe` 1
          it "should run without errors" $ r "abc"  `shouldBe` "abc"
    --      it "should run without errors" $ co `shouldBe` 
    --      it "should run without errors" $ a `shouldBe` ???
    --      it "should run without errors" $ a' `shouldBe` ???
        describe "Fix it" $ do
          it "should sing the first string" $ fstString "Singing" `shouldBe` "Singing in the rain"
          it "should sing the second string" $ sndString "Somewhere" `shouldBe` "Somewhere over the rainbow"
          it "should sing the first song" $ sing `shouldBe` "Singing in the rain"
          it "should sing the second song" $ sing2 `shouldBe` "Somewhere over the rainbow"
        describe "Type-Kwon-Do" $
          it "should call h and return e" $ h 1 `shouldBe` 'e'
