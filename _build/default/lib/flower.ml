open Setup
open Printf

type s = (string * int * string) option

let empty = None

let getAge = function
  | None -> None
  | Some (_, age, _) -> Some age

let step = function
  | None -> None
  | Some (name, age, file) -> Some (name, age + 1, file)

let getSpecies = function
  | None -> None
  | Some (name, _, _) -> Some name

let getRepFilePath = function
  | None -> None
  | Some (_, _, file) -> Some file

let spawn () =
  let name =
    List.nth !species (Random.int (List.length !Setup.species)) |> fst
  in
  Some (name, 0, name ^ "-0.png")

let string_of_flower = function
  | None -> sprintf "None"
  | Some (name, age, _) -> sprintf "%c, %d" (String.get name 0) age
