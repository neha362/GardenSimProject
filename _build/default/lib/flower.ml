type s = (string * int * string * (int * int)) option

let empty = None

let getAge = function
  | None -> None
  | Some (_, age, _, _) -> Some age

let age = function
  | None -> None
  | Some (name, age, file, loc) -> Some (name, age + 1, file, loc)

let getSpecies = function
  | None -> None
  | Some (name, _, _, _) -> Some name

let getLocation = function
  | None -> None
  | Some (_, _, _, loc) -> Some loc

let getRepFilePath = function
  | None -> None
  | Some (_, _, file, _) -> Some file
