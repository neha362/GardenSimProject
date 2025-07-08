open Object

type t
(**Type [t] represents an abstract garden type.*)

val create : int -> t
(**[create x] creates a hexagonal garden of side length [x].*)

val getValueAt : int -> int -> Object.s
(**[getValueAt x y] takes in an object placed at the coordinate [(x, y)] and
   returns the Object.s associated with the space.*)

val age : t -> t
(**[age garden] returns the same garden, aged by one step. If the age of
   [garden] is [x], then the age of the resulting garden must be [x + 1]. *)