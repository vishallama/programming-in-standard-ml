signature ARITH =
sig
  type integer
  val rep : int -> integer
  val display : integer -> string
  val add : integer * integer -> integer
  val mult : integer * integer -> integer
end

(* Decimal digit representation of integers:
   Represent "integer" values as lists of decimal digits (in reverse order,
   with least significant digit first. This order makes digit-wise arithmetic
   operations easy.
*)

structure Dec : ARITH =
struct
  type digit = int (* uses 0 through 9 *)
  type integer = digit list

  fun rep 0 = []
    | rep n = (n mod 10) :: rep (n div 10)

  (* carry : digit * integer -> integer *)
  fun carry (0, ps) = ps
    | carry (c, []) = [c]
    | carry (c, p::ps) = ((p+c) mod 10 :: carry ((p+c) div 10, ps))

  fun add ([], qs) = qs
    | add (ps, []) = ps
    | add (p::ps, q::qs) =
        ((p+q) mod 10) :: carry ((p+q) div 10, add(ps, qs))

  (* times : digit -> integer -> integer *)
  fun times 0 qs = []
    | times k [] = []
    | times k (q::qs) =
        ((k * q) mod 10) :: carry ((k * q) div 10, times k qs)

  fun mult ([], _) = []
    | mult (_, []) = []
    | mult (p::ps, qs) = add (times p qs, 0 :: mult (ps, qs))

  fun display [] = "0"
    | display L = foldl (fn (d, s) => Int.toString d ^ s) "" L
end

