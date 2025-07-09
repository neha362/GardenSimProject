open Flower

type s
(**Type [s] represents an abstract garden type.*)

val create : int -> s
(**[create x] creates a hexagonal garden of side length [x].*)

val getValueAt : s -> int -> int -> Flower.s
(**[getValueAt x y] takes in an object placed at the coordinate [(x, y)] and
   returns the Object.s associated with the space.*)

val step : s -> s
(**[step garden] returns the same garden, aged by one step. If the age of
   [garden] is [x], then the age of the resulting garden must be [x + 1]. *)

val display_text : s -> string
(**[display_text garden] returns a string that depicts garden in readable form.
*)
