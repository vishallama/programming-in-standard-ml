(* Binary Search Tree of integers *)

signature TREE =
sig
  datatype tree = Leaf
                | Node of tree * int * tree
  val empty : tree
  val insert : int * tree -> tree
  val trav : tree -> int list
end

