(* Use of datatype declarations and pattern matching for defining and
   manipulating the abstract syntax of a language. *)

datatype expr = Numeral of int
              | Plus of expr * expr
              | Times of expr * expr
              | Recip of expr

fun eval (Numeral n) = Numeral n
  | eval (Plus(e1,e2)) =
    let
      val Numeral n1 = eval e1
      val Numeral n2 = eval e2
    in
      Numeral (n1 + n2)
    end
  | eval (Times (e1, e2)) =
    let
      val Numeral n1 = eval e1
      val Numeral n2 = eval e2
    in
      Numeral (n1 * n2)
    end
  | eval (Recip e) =
    let
      val Numeral n = eval e
    in
      Numeral (1 div n)
    end

