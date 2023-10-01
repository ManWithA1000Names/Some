all: build

build:
	mkdir -p out
	bun build --compile . --outfile some_js-bun
	mv some_js-bun out/

release:
	mkdir -p out
	bun build . >out/some_js-bun.js

run:
	bun run .

run-release: run

test:
	bun test
