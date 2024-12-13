(lang dune 3.17)
(name example)

(generate_opam_files true)

(license ISC)
(maintainers "The ocsigen team <dev@ocsigen.org>")
(authors "The ocsigen team <dev@ocsigen.org>")
(source (github ocsigen/ts2ocaml-example))

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
  (ocamlformat (and :with-dev-setup (= 0.27.0)))))

(pin
 (package (name ts2ocaml-jsoo-stdlib))
 (url "git+https://github.com/ocsigen/ts2ocaml.git#jsoo-stdlib-v2.0.0-beta.3"))
