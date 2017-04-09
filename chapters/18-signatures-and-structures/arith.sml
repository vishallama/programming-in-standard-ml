signature ARITH =
sig
  type integer
  val rep : int -> integer
  val display : integer -> string
  val add : integer * integer -> integer
  val mult : integer * integer -> integer
end

(* Standard implementation of ARITH *)

structure Ints : ARITH =
struct
  type integer = int
  fun rep(n : int) : integer = n
  fun display(n : integer) : string = Int.toString n
  val add : integer * integer -> integer = (op +)
  val mult : integer * integer -> integer = (op * )
end

(* Signature exposing fewer components *)

signature ARITH2 =
sig
  type integer
  val add : integer * integer -> integer
  val mult : integer * integer -> integer
end

(* rep and display are not visible to users of the structure *)

structure Ints2 : ARITH2 =
struct
  type integer = int
  fun rep(n : int) : integer = n
  fun display(n : integer) : string = Int.toString n
  val add : integer * integer -> integer = (op +)
  val mult : integer * integer -> integer = (op * )
end

