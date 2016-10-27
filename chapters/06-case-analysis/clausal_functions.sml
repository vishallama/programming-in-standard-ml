(* Clausal function expressions *)

val recip : int -> int =
  fn 0 => 0
 | n : int => 1 div n

fun recip' 0 = 0
  | recip' (n : int) = 1 div n

fun not' true = false
  | not' false = true

fun andalso' true exp = exp
  | andalso' false _ = false

fun orelse' true _ = true
  | orelse' false exp = exp
