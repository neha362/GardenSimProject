type s = string * (int * int) * int
(**[type s] represents a flower. AF: If object [object] has type name [name],
   location [(x, y)], and age [age], then the corresponding representation is
   the 3-tuple (name, (x, y), age). RI: the second tuple component is the
   coordinate pair (x, y), if and only if the location is (x, y). Similarly, the
   age is [age] if and only if the third tuple component is [age].*)

let spawn str x y = (str, (x, y), 0)

let getLoc = function
  | _, loc, _ -> loc

let age = function
  | name, (x, y), v -> (name, (x, y), v + 1)

let get_name = function
  | name, _, _ -> name

let get_age = function
  | _, _, v -> v