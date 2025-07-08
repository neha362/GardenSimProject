open Object

type t = Object.s list list
(**[type t] is a [Object.s list list] that represents a garden. AF: if the
   garden [garden] contains an object of type name [name] and step count [age]
   at location (x, y), then [garden] contains an object with type name [name],
   location [(x, y)], and step count [age]. *)

let getValueAt x y = Object.spawn "abc" x y
let age x = x
let create x = []