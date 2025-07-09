val species : (string * int) list ref
(**[species] contains a reference to the association list of type
   [string * int], where each flower species is stored along with the number of
   life stages it has. *)

val init : unit -> unit
(**[init ()] is the initialization function for the project, which initializes
   the constants.*)
