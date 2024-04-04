all: build

main.o: main.s
	as $^ -o $@

main: main.o
	ld $^ -o $@

build: main

release: build

run: build
	./main
	
run-release: run

test:
	@echo "there is no builtin test framework for raw assembly"
