PREFIX = /usr/local
XDG_CONFIG_HOME ?= $(HOME)/.config
NVIMPAGER_CONFIG = $(XDG_CONFIG_HOME)/nvimpager

install:
	install prev $(PREFIX)/bin/prev
	mkdir -p $(NVIMPAGER_CONFIG)
	install -m 644 init.vim $(NVIMPAGER_CONFIG)/init.vim

test:
	shellcheck $(shell which prev)
	prev
	for f in $(shell ls -a); do prev "$$f"; done
