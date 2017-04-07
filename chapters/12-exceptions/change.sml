exception Change

(* change : int list * int -> int list *)
(* REQUIRES: L is a list of positive integers & a >= 0 *)
(* ENSURES:
*    EITHER change(L, a) ==> C,
*           where C is a list of items drawn (possibly with duplicates)
*           from the list L, such that sum C = a;
*    OR     change(L, a) raises Change and there is no such list C. *)

fun change(_, 0) = []
  | change([], _) = raise Change
  | change(c::R, a) =
    if a < c then change(R, a)
    else c :: (change (c::R, a-c))
    handle Change => change(R, a)

(* mkChange : int list * int -> (int list) option *)
fun mkChange(coins, a) =
  SOME (change(coins, a)) handle Change => NONE

