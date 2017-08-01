module Chapter7.FunctionCompositionSpec where

import           Test.Hspec

{-
           XXXXXX                                                                 XXXXXXXXXXX
          XX    X                                                             XXXXX         XXXX
         X      X                                                          XXX                 XX
        X      X                                                         XX       XXXX          XX
       X      XX                                                       XXX       XXXXXX          XX
       X      X                                 XXXX                     XX      XXXXXX           X
       X     X                           XXXXXXX     X                    XX      XXXX             X
      X     X                           XX          XX                     XX                      X
      X    X                           XX           XX                      XX                     XX
      X  XX                            X           XXX                       XX                     X
      X X                             XX           XX                         XX                    X
      XX                              XX         XXX    XX            X        XX                  X
    XXX                                XXXXXXXXXXX X XXXX             XXXX       XX               XX
  XXX X                                          XXXX                  X XXXX     XX             XX
 XX   X               XXXX                    XXXXXX                   XX   XXXXX   XX           X
XX    X              XXXXXX                XXX    X                     X        XXXXXX       XXX
      X               XXXX              XXX      XX                      X           XX     XXX
   XXXXXXXX                           XXX        X                        X               XXX
     XX                              XX          X                         XXX         XXXX
     X                               X          XX                            XXXXXXXXXX
     X                               XX         X
     X                                XXX     XX
     X                                   XXXXXX

-}
f :: [Integer]
f = take 5 (enumFrom 3)

f2 :: Enum a => a -> [a]
f2 x = take 5 (enumFrom x)

mapAndFilter :: [Integer]
mapAndFilter = map (+ 1) (filter (== 4) (map (* 2) (take 5 [1,2 ..])))

g :: (a -> b) -> (a, c) -> (b, c)
g = undefined

spec :: Spec
spec =
  describe "Function composition" $ do
    it "rewrite f to use . notation" $ f `shouldBe` [3, 4, 5, 6, 7]
    it "rewrite mapAndFilter with . notation" $ mapAndFilter `shouldBe` [5]
    it "rewrite f2 with . notation and pointfree" $ f2 1 `shouldBe` [1, 2, 3, 4, 5]
    xit "inplement g" $ g id (22, "Hi") `shouldBe` (22, "Hi")
