fun reduce(unit, opn, nil) =
  unit
  | reduce(unit, opn, h :: t) =
    opn (h, reduce(unit, opn, t))

fun better_reduce(unit, opn, l) =
  let
    fun loop nil = unit
      | loop (h :: t) = opn(h, loop t)
  in
    loop l
  end

