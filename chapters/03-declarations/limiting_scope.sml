(* let expressions *)
let
  val m : int = 3
  val n : int = m * m
in
  m * n
end; (* evaluates to 27 *)

val m : int = 2
val r : int =
  let
    val m : int = 3
    val n : int = m * m
  in
    m * n
  end * m; (* evaluates to 54 *)

(* local declarations *)
let
  local
  val p : int = 4
  val q : int = 5
  in
  val n : int = p  * (q + 1)
end
in
  n * (n + 1)
end; (* evaluates to 600 *)

