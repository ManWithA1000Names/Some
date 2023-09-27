PREFIX=~/.local

all: build

build:
	@echo "This project does not have a build step. It only has a install and uninstall step"

release:
	@echo "This project does not have a build step. It only has a install and uninstall step"

install:
	mkdir -p $(PREFIX)/bin
	sed 's@PREFIX=.@PREFIX=$(PREFIX)/share/some@' ./some > $(PREFIX)/bin/some
	chmod +x $(PREFIX)/bin/some
	if [ -d $(PREFIX)/share/some/ ]; then rm -rf $(PREFIX)/share/some; fi
	mkdir -p $(PREFIX)/share/some
	cp -R languages $(PREFIX)/share/some/

uninstall:
	[ -f $(PREFIX)/bin/some ] && rm $(PREFIX)/bin/some
	[ -d $(PREFIX)/share/some ] && rm $(PREFIX)/share/some/
