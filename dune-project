(lang dune 3.16)

(name example)

(license ISC)

(authors "The ocsigen team")

(maintainers "dev@ocsigen.org")

(source
 (github ocsigen/ts2ocaml-example))

(generate_opam_files true)

(package
 (name example)
 (synopsis "Example use of ts2ocaml")
 (description "Example use of ts2ocaml")
 (depends
  ts2ocaml-jsoo-stdlib
  ojs
  gen_js_api
  js_of_ocaml-compiler
  (ocaml-lsp-server :with-dev-setup)
  (ocamlformat
   (and
    :with-dev-setup
    (= 0.26.2)))))
