module Chapter11.AdtSpec where

import           Test.Hspec

data BinaryTree a
  = Leaf
  | Node (BinaryTree a)
         a
         (BinaryTree a)
  deriving (Eq, Ord, Show)

insert' :: Ord a => a -> BinaryTree a -> BinaryTree a
insert' b Leaf = Node Leaf b Leaf
insert' b (Node left a right)
  | b == a = Node left a right
  | b < a = Node (insert' b left) a right
  | b > a = Node left a (insert' b right)

mapTree :: (a -> b) -> BinaryTree a -> BinaryTree b
mapTree = undefined

preorder :: BinaryTree a -> [a]
preorder = undefined

foldTree :: (a -> b -> b) -> b -> BinaryTree a -> b
foldTree = undefined

spec :: Spec
spec =
  describe "ADTs" $ do
    xit "implement map on tree" $ mapTree (* 2) testTree `shouldBe` multipliedTree
    xit "implement tree to list" $ preorder testTree `shouldBe` [2, 1, 3]
    xit "implement foldTree" $ foldTree (+) 0 testTree `shouldBe` 6
  where
    multipliedTree = Node (Node Leaf 2 Leaf) 4 (Node Leaf 6 Leaf)
    testTree = Node (Node Leaf 1 Leaf) 2 (Node Leaf 3 Leaf)
