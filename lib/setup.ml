open BatEnum
open Csv

let species = ref []

let init () =
  species :=
    let x = Csv.load "./flowers.csv" in
    List.fold_left (fun acc x -> x :: acc) [] (List.hd x)
