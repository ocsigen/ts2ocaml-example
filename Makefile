.PHONY: pretty-bytes
pretty-bytes:
	yarn ts2ocaml jsoo node_modules/pretty-bytes/index.d.ts \
		--preset=full \
		--output-dir=lib \
		--simplify \
		--verbose \
		--nowarn

.PHONY: bindings
bindings: pretty-bytes

.PHONY: build
build:
	dune build @all --profile=release
	yarn esbuild _build/default/bin/main.bc.js \
		--bundle \
		--minify \
		--outfile=dist/index.js \
		--platform=node

.PHONY: fmt
fmt:
	dune build @fmt --auto-promote

.PHONY: clean
clean:
	dune clean
