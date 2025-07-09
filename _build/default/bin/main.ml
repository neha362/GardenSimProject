open GardenSimProject.Garden
open GardenSimProject.Setup

let () =
  init ();
  let gdn = ref (create 2) in
  for i = 0 to 10 do
    gdn := step !gdn;
    !gdn |> display_text |> print_endline
  done
