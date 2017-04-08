(* Signature of a Queue *)

signature QUEUE =
sig
  type 'a queue
  exception Empty
  val empty : 'a queue
  val insert : 'a * 'a queue -> 'a queue
  val remove : 'a queue -> 'a * 'a queue
end

(* Add more components to an existing signature using signature inclusion. *)

signature QUEUE_WITH_EMPTY =
sig
  include QUEUE
  val is_empty : 'a queue -> bool
end

(* Augment an existing signature with an additional type definition. *)

signature QUEUE_AS_LISTS =
QUEUE where type 'a queue = 'a list * 'a list

