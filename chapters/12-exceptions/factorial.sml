(* User-defined exceptions *)

exception Factorial

fun checked_factorial n =
  if n < 0 then
    raise Factorial
  else if n = 0 then
    1
       else n * checked_factorial (n-1)

local
fun fact 0 = 1
  | fact n = n * fact (n-1)
in
fun checked_factorial' n =
  if n >= 0 then
    fact n
  else
    raise Factorial
end

