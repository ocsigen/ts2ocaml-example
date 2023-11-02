open Ts2ocaml_min

module PrettyBytes = struct
  open Example
  module Options = Pretty_bytes.Export.Options

  let pretty_bytes = Pretty_bytes.prettyBytes
end

let options =
  PrettyBytes.Options.create ~signed:false
    ~locale:(Primitive.inject (`String "en"))
    ~bits:false ~binary:false ~minimumFractionDigits:1 ~maximumFractionDigits:2
    ()

let () = print_endline @@ PrettyBytes.pretty_bytes ~number:128000000 ~options ()
