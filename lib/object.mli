type s
(**Type [s] represents a flower *)

val spawn : string -> int -> int -> s
(**[spawn name x y] creates a flower of name [name] at the location represented
   by the coordinate [x, y]*)

val getLoc : s -> int * int
(**[getLoc flower] returns the location that the flower is supposed to be
   located at. Requires: if the flower is at locations [x, y], then the returned
   tuple must be [(x, y)]*)

val age : s -> s
(**[age flower] returns [flower] aged by one time step. If [flower] has age [x],
   then [age flower] has age [x + 1]*)

val get_name : s -> string
(**[get_name flower] returns the name of the flower species. If the flower
   species has name [name], then the value of [get_name flower] should be
   [name].*)

val get_age : s -> int
(**[get_age flower] returns the age of the flower. If the flower has age [age],
   then the value of [get_age flower] is [age] *)