(* Functions and applications *)

(* Anonymous function and application *)
fn x : real => Math.sqrt (Math.sqrt x); (* real -> real *)
(fn x : real => Math.sqrt (Math.sqrt x)) (16.0); (* evaluates to 2.0 *)

(* Bind the fourth root function to a variable name *)
val fourthroot : real -> real =
  fn x : real => Math.sqrt (Math.sqrt x)

(* Special syntax for function bindings that is more concise and natural *)
fun fourthroot' (x : real) : real = Math.sqrt (Math.sqrt x);

(* Some more function declarations *)
fun srev (s : string) : string = implode (rev (explode s))
fun pal (s : string) : string = s ^ (srev s)
fun double (n : int) : int = n + n
fun square (n : int) : int = n * n
fun halve (n : int) : int = n div 2
fun is_even (n : int) : bool = (n mod 2 = 0)
fun is_odd (n : int) : bool = not (is_even n)

(* Binding in function expressions *)
val x : real = 2.0
fun f(x : real) : real = x + x  (* x is bound to the function parameter *)
fun g(y : real) : real = x + y  (* x = 2.0 *)

(* Local val bindings may shadow parameters, as well as other val
   bindings. *)
fun h(x : real) : real =
  let val x : real = 3.0 in x + x end * x;

h(4.0);  (* evaluates to 24.0 *)

