(* Record Types *)
type hyperlink =
  { protocol : string,
    address  : string,
    display  : string }

val mailto_vishal : hyperlink =
  { protocol = "mailto",
    address = "vishal.lama@gmail.com",
    display = "Vishal Lama" }

(* Record binding *)
val { protocol = prot, display = disp, address = addr } = mailto_vishal

(* Ellipsis patterns *)
val { protocol = prot', ... } = mailto_vishal
(* In order for the above to work, the compiler must be able to determine
   unambiguously the type of the record pattern. In some situations, the
   context does not disambiguate, in which case you must apply additional
   type information, or avoid the use of ellipsis notation. *)

(* Abbreviated form of record pattern *)
val { protocol, address, display } = mailto_vishal 
(* The label does "double duty" as a variable. *)

