PREFIX=~/.local

all: build

build:
	@echo "This project does not have a build step. It only has a install and uninstall step"

release:
	@echo "This project does not have a build step. It only has a install and uninstall step"

install:
	sed 's/PREFIX="."/PREFIX="$(PREFIX)"' > $PREFIX/bin/some
	[ -d $PREFIX/share/some/ ] && rm -rf $PREFIX/share/some
	cp -R languages $PREFIX/share/some/

uninstall:
	[ -f $PREFIX/bin/some ] && rm $PREFIX/bin/some
	[ -d $PREFIX/share/some ] && rm $PREFIX/share/some/
