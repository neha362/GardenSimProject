open Flower
open Random
open Printf

type s = Flower.s array array * int
(**[type t] is a [Flower.s array array * int] tuple that represents a garden.
   AF: if the garden [garden] contains a flower of type name [name] and step
   count [age] at location (x, y), then [garden] contains a flower with type
   name [name], location [(x, y)], and step count [age]. Moreover, the garden
   with age [age] will have the second tuple component be [age]. RI: the second
   tuple component must be nonnegative.*)

let getValueAt gdn x y =
  let garden = fst gdn in
  if x < 0 || y < 0 || (x - y) mod 2 <> 0 then Flower.empty else garden.(x).(y)

let populate gdn count =
  let garden = fst gdn in
  for i = 0 to count do
    let i = Random.int (Array.length garden) in
    let j = Random.int (Array.length garden.(0)) in
    if (i - j) mod 2 = 0 && garden.(i).(j) = Flower.empty then
      garden.(i).(j) <- Flower.spawn ()
    else ()
  done

let create width =
  let garden = (Array.make_matrix width (2 * width) Flower.empty, 0) in
  populate garden (int_of_float (float_of_int width *. 1.5));
  garden

let display_text garden =
  sprintf "Step: %d\n" (snd garden)
  ^ Array.fold_left
      (fun str row ->
        str
        ^ Array.fold_left
            (fun str flower -> str ^ string_of_flower flower ^ " ")
            str row
        ^ "\n")
      "" (fst garden)

let step gdn =
  let garden = fst gdn in
  Array.iteri
    (fun i row ->
      Array.iteri
        (fun j col -> garden.(i).(j) <- Flower.step garden.(i).(j))
        row)
    garden;
  populate gdn (Array.length (fst gdn));
  (garden, snd gdn + 1)
