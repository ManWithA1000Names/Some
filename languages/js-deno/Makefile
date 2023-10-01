all: build

build:
	mkdir -p out
	deno compile -A main.js
	mv some_js-deno ./out/

release: build

run:
	deno run -A main.js

run-release: run

test:
	deno test
