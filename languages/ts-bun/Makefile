all: build

build:
	mkdir -p out
	bun build --compile .
	mv some_ts-bun out/

release:
	mkdir -p out
	bun build . > out/some_ts-bun.js

run:
	bun run .

run-release: run

test:
	bun test
