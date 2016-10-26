(* Compound declarations *)

val m : int = 6 + 7
val n : int = m * m

(* Binding is not assignment. We may shadow a binding by introducing a
   second binding for a variable within the scope of the first binding. *)

val n : real = 10.1112

(* In the presence of higher-order functions, shadowed bindings are not
   always discarded, but are preserved as private data in a closure. *)

