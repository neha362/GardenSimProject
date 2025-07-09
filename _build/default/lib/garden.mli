open Flower

type s
(**Type [s] represents an abstract garden type.*)

val create : int -> s
(**[create x] creates a hexagonal garden of side length [x].*)

val getValueAt : int -> int -> Flower.s
(**[getValueAt x y] takes in an object placed at the coordinate [(x, y)] and
   returns the Object.s associated with the space.*)

val age : s -> s
(**[age garden] returns the same garden, aged by one step. If the age of
   [garden] is [x], then the age of the resulting garden must be [x + 1]. *)
