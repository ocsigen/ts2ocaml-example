(lang dune 3.14)

(name example)

(license ISC)

(authors "The ocsigen team")

(maintainers "dev@ocsigen.org")

(source
 (github ocsigen/ts2ocaml))

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
  (ocamlformat
   (and
    (= 0.26.1)
    :with-dev-setup))
  (ocaml-lsp-server :with-dev-setup)))
