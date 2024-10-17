all: build

build:
	deno task build

release: build

run:
	deno task dev

run-release: build
	deno run --allow-net --allow-env --allow-read=. jsr:@std/http/file-server --open --port 3000 ./dist

test:
	deno test
