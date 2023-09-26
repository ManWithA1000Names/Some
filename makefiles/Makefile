OUTDIR = out
all: build

$(OUTDIR):
	mkdir -p $@

build: $(OUTDIR)
	cargo build
	# TODO:          \/ find a away to dymanically get the name if 
	cp target/debug/rust ./out/

test:
	cargo test

run:
	cargo run


