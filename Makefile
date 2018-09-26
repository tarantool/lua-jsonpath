.PHONY: lint
lint:
	luacheck --config=.luacheckrc --no-unused-args --no-redefined \
		jsonpath.lua

.PHONY: test
test: build lint
	./test/test.lua

.PHONY: build
build:
	tarantoolctl rocks make

all: build test
