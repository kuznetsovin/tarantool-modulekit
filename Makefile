SHELL := /bin/bash

.PHONY: .rocks all install

all: $(shell find src -type f) node_modules
	npm run build

node_modules: package.json
	npm i
	@ touch $@

install:
	mkdir -p $(LUADIR)/uikit/
	cp build/bundle.lua $(LUADIR)/uikit/bundle.lua

run:
	npm run start

lint:
	npm run lint
