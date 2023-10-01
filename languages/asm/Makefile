all: build

build:
	as main.s -o main.o
	ld main.o -o main

release: build

run: build
	./main
	
run-release: run

test:
	@echo "there is no builtin test framework for raw assembly"
