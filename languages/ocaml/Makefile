NAME=ocaml
all: build

build:
	dune build

release:
	dune build --release

test:
	dune test

run:
	dune exec $(NAME)

run-release:
	dune exec --release $(NAME)

clean:
	rm -rf _build
