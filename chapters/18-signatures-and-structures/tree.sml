(* Binary Search Tree of integers using proper abstraction *)

signature TREE =
sig
  type tree
  val empty : tree
  val insert : int * tree -> tree
  val trav : tree -> int list
end

(* A specific tree implementation is not available for use and is said
   to be abstract.
*)

structure BinarySearchTree : TREE =
struct
  datatype bst = Leaf
                | Node of bst * int * bst

  type tree = bst

  val empty = Leaf

  fun insert(x, Leaf) = Node(Leaf, x, Leaf)
    | insert(x, Node(left, y, right)) =
      if x < y then Node(insert(x, left), y, right)
      else if y < x then Node(left, y, insert(x, right))
      else Node(left, x, right)  (* don't keep duplicates *)

  fun trav Leaf = []
    | trav (Node(left, x, right)) = trav left @ (x :: (trav right))
end

