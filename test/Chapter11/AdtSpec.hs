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
mapTree _ Leaf = Leaf
mapTree f (Node left a right) = Node (mapTree f left) (f a) (mapTree f right)

preorder :: BinaryTree a -> [a]
preorder Leaf = []
preorder (Node left a right) = a : preorder left ++ preorder right

foldTree :: (a -> b -> b) -> b -> BinaryTree a -> b
foldTree f b = foldl (flip f) b . preorder

spec :: Spec
spec =
  describe "ADTs" $ do
    it "implement map on tree" $ mapTree (* 2) testTree `shouldBe` multipliedTree
    it "implement tree to list" $ preorder testTree `shouldBe` [2, 1, 3]
    it "implement foldTree" $ foldTree (+) 0 testTree `shouldBe` 6
  where
    multipliedTree = Node (Node Leaf 2 Leaf) 4 (Node Leaf 6 Leaf)
    testTree = Node (Node Leaf 1 Leaf) 2 (Node Leaf 3 Leaf)
