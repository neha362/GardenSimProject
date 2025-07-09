type s
(**[type s] represents a flower.*)

val empty : s

val step : s -> s
(**[step flower] increases a flower's age. If a flower originally has step count
   [age], then the function acts on [flower] such that the flower's age after
   calling the function is [age + 1].*)

val getAge : s -> int option
(**[getAge flower] returns the flower's age. [getAge flower = age] if and only
   if the flower's age is [age]. *)

val getSpecies : s -> string option
(**[getSpecies flower] returns the flower's species.
   [getSpecies flower = species] if and only if the flower's species is
   [species].*)

val getRepFilePath : s -> string option
(**[getRepFilePath] returns the file path to the image representation of the
   flower, based on its species and age. *)

val spawn : unit -> s
(**[spawn ()] returns a seedling of a random flower species. The age of
   [spawn ()] is always [0]*)

val string_of_flower : s -> string
(**[string_of_flower flower] returns a [string] representation of the flower,
   with the flower's name and age.*)
