open BatEnum
open Csv

let species = ref []

let init () =
  Random.self_init ();
  species :=
    let x = Csv.load "./lib/flowers.csv" in
    List.fold_left
      (fun acc row -> (List.hd row, int_of_string (List.nth row 1)) :: acc)
      [] x
