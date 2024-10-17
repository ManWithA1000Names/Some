all: build

build:
	deno task build

release: build

run:
	deno task dev

run-release: build
	(sleep 1 && xdg-open http://0.0.0.0:3000) &
	deno run --allow-net --allow-env --allow-read=. jsr:@std/http/file-server --port 3000 ./dist

test:
	deno test
