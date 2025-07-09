open Flower

type s = Flower.s array array
(**[type t] is a [Flower.s array array] that represents a garden. AF: if the
   garden [garden] contains a flower of type name [name] and step count [age] at
   location (x, y), then [garden] contains a flower with type name [name],
   location [(x, y)], and step count [age]. *)

let age garden = garden
let create x = Array.make_matrix (2 * x) (2 * x) Flower.empty
let getValueAt x y = Flower.empty
