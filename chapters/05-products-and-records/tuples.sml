(* Tuples *)

val pair : int * int = (3, 4)
val triple : int * real * string = (3, 4.0, "hello")
val quadruple : int * int * real * real =
  (3, 4, 3.0, 4.0);
val pair_of_pairs : (int * int) * (real * real) =
  ((3, 4), (3.0, 4.0))

(* Tuple expressions are evaluated from left to right *)
val x : int * real * string = (2 + 1, 2.0 + 2.0, "hel" ^ "lo")

(* The above is equivalent to the following *)
val x' =
  let
    val x1 : int = 2 + 1
    val x2 : real = 2.0 + 2.0
    val x3 : string = "hel" ^ "lo"
  in
    (x1, x2, x3)
  end;

(* Strictly speaking, it is not essential to have tuple expressions as a
   primitive notion in the language. *)

(* Tuple patterns *)
val (m : int, n : int) = (8+1, 8 div 3)
val ((a : int, b : int), (c : real, d : real)) =
  ((3, 4), (3.0, 4.0))

