#!/usr/bin/xcrun make -f

NAME=xccolorlistgen
EXECUTABLE=./.build/release/$(NAME)
BINARIES_FOLDER=/usr/local/bin

.PHONY: setup clean installables install uninstall

setup:
	git submodule update --init --recursive --force

clean:
	swift package clean

installables:
	swift build -c release -Xswiftc -static-stdlib

install: installables
	sudo cp -f "$(EXECUTABLE)" "$(BINARIES_FOLDER)"

uninstall:
	rm -f "$(BINARIES_FOLDER)/$(NAME)"
