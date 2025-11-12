(lang dune 3.20)
(name example)

(generate_opam_files true)

(maintainers "The ocsigen team <dev@ocsigen.org>")
(authors "The ocsigen team <dev@ocsigen.org>")
(license ISC)
(source (github ocsigen/ts2ocaml-example))

(package
 (name example)
 (synopsis "Example use of ts2ocaml")
 (description "Example use of ts2ocaml")
 (depends
  (ocaml (< 5.0))
  ts2ocaml-jsoo-stdlib
  ojs
  gen_js_api
  js_of_ocaml-compiler
  (ocaml-lsp-server :with-dev-setup)
  (ocamlformat (and :with-dev-setup (= 0.28.1)))))

(pin
 (package (name ts2ocaml-jsoo-stdlib))
 (url "git+https://github.com/ocsigen/ts2ocaml.git#jsoo-stdlib-v2.0.0-beta.3"))
