all: build

build:
	npm run build

release: build

run: build
	node ./out/src/index.js	

run-release: run

test:
	node --test
