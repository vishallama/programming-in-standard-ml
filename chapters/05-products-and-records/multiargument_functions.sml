(* Multiple arguments and multiple results *)
val dist : real * real -> real =
  fn (x : real, y : real) => Math.sqrt (x * x + y * y)

fun distance (x : real, y : real) =
  Math.sqrt (x * x + y * y)

(* Record patterns *)
fun distance' { x = x : real, y = y : real } = Math.sqrt (x * x + y * y)

fun dist2 (x : real, y : real) : real * real =
  (Math.sqrt (x * x + y * y), abs (x - y))

