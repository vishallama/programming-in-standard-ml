(* User-defined exceptions *)

exception Factorial

fun checked_factorial n =
  if n < 0 then
    raise Factorial
  else if n = 0 then
    1
       else n * checked_factorial (n-1)

