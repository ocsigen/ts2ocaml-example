.PHONY: all
all: clean bindings build

.PHONY: pretty-bytes
pretty-bytes:
	ts2ocaml jsoo node_modules/pretty-bytes/index.d.ts \
		--output-dir=lib \
		--simplify \
		--verbose \
		--nowarn

.PHONY: bindings
bindings: pretty-bytes

.PHONY: build
build:
	dune build @all --profile=release
	esbuild _build/default/bin/main.bc.js \
		--bundle \
		--minify \
		--outdir=dist \
		--platform=node \
		--analyze \
		--banner:js='globalThis["pretty-bytes"]={};'

.PHONY: fmt
fmt:
	dune build @fmt --auto-promote

.PHONY: clean
clean:
	-rm -r dist/
	-rm lib/*.{mli,js}
