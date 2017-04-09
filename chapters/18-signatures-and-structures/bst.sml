(* Binary Search Tree of integers *)

signature TREE =
sig
  datatype tree = Leaf
                | Node of tree * int * tree
  val empty : tree
  val insert : int * tree -> tree
  val trav : tree -> int list
end

structure BinarySearchTree : TREE =
struct
  datatype tree = Leaf
                | Node of tree * int * tree

  val empty = Leaf

  fun insert(x, Leaf) = Node(Leaf, x, Leaf)
    | insert(x, Node(left, y, right)) =
      if x < y then Node(insert(x, left), y, right)
      else if y < x then Node(left, y, insert(x, right))
      else Node(left, x, right)  (* don't keep duplicates *)

  fun trav Leaf = []
    | trav (Node(left, x, right)) = trav left @ (x :: (trav right))
end

