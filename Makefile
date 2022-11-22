OS := $(shell uname -s)
ifeq ($(OS), Linux)
	SRC_LIB = libtcalc.so
	DEST_LIB = tcalc.so
else
	ifeq ($(OS), Darwin)
		SRC_LIB = libtcalc.dylib
		DEST_LIB = tcalc.dylib
	endif
endif
TARANTOOL_LOG=tmp/tarantool.log

all: build

build_lib:
	cargo build

build_release_lib:
	cargo build --release

install_release:
	cp target/release/$(SRC_LIB) $(LIBDIR)/$(DEST_LIB)

build:
	cartridge build

run:
	cartridge start

lint:
	cargo fmt --all -- --check
	cargo clippy -- -Dclippy::all -Wclippy::pedantic
	./deps.sh
	.rocks/bin/luacheck ttc/ test/

test_lib:
	cargo test

test: build
	.rocks/bin/luatest --coverage -v test/

test_all: test_lib test

release:
	cartridge pack rpm . --version=${CI_COMMIT_TAG}

.PHONY: all install test lint
