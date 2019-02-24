#!/usr/bin/xcrun make -f

NAME=xccolorlist
EXECUTABLE=./.build/release/$(NAME)
BINARIES_FOLDER=/usr/local/bin

.PHONY: setup clean installables install uninstall

setup:
	git submodule update --init --recursive

clean:
	swift package clean

installables:
	swift build -c release -Xswiftc -static-stdlib	

install: installables
	sudo cp -f "$(EXECUTABLE)" "$(BINARIES_FOLDER)"
	
cleaninstall: clean install

uninstall:
	rm -f "$(BINARIES_FOLDER)/$(NAME)"
