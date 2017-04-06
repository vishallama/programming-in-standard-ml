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

fun staged_reduce (unit, opn) =
  let
    fun red nil = unit
      | red (h::t) = opn(h, red t)
  in
    red
  end

fun append (nil, l) = l
  | append (h::t, l) = h :: append(t, l)

(* naive curried version of append *)

fun curried_append nil l = l
  | curried_append (h::t) l = h :: curried_append t l

(* more efficient version of append using staging *)

fun staged_append nil = (fn l => l)
  | staged_append (h::t) =
    let
      val tail_appender = staged_append t
    in
      fn l => h :: tail_appender l
    end

