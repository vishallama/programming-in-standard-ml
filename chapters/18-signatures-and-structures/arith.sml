signature ARITH =
sig
  type integer
  val rep : int -> integer
  val display : integer -> string
  val add : integer * integer -> integer
  val mult : integer * integer -> integer
end

