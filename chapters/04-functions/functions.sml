(* Functions and applications *)

(* Anonymous function and application *)
fn x : real => Math.sqrt (Math.sqrt x); (* real -> real *)
(fn x : real => Math.sqrt (Math.sqrt x)) (16.0); (* evaluates to 2.0 *)

(* Bind the fourth root function to a variable name *)
val fourthroot : real -> real =
  fn x : real => Math.sqrt (Math.sqrt x)

(* Special syntax for function bindings that is more concise and natural *)
fun fourthroot' (x : real) : real = Math.sqrt (Math.sqrt x);

