open GardenSimProject.Garden
open GardenSimProject.Setup

let () =
  init ();
  let gdn = ref (create 2) in
  !gdn |> display_text |> print_endline;
  for i = 0 to 10 do
    gdn := step !gdn;
    !gdn |> display_text |> print_endline
  done
