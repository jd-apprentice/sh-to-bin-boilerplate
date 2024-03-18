# Usage: make [compile|execute|clear]

script ?= sample_app

compile: src/${script}.sh
	if [ ! -d build ]; then mkdir build; fi
	shc -f src/$(script).sh -o build/$(script)
	rm -f src/$(script).sh.x.c

execute: build/$(script)
	./build/$(script)

.PHONY: clear
clear:
	rm -f build/$(script)

install:
	sudo add-apt-repository ppa:neurobin/ppa
	sudo apt-get update
	sudo apt-get install shc

install-generic:
	git clone https://github.com/neurobin/shc.git
	cd shc
	./configure
	make
	sudo make install