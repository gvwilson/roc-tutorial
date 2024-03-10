include lib/tut/tutorial.mk

SRC_FILES := $(wildcard src/*.roc)
OUT_FILES := $(patsubst src/%.roc,out/%.out,${SRC_FILES})

STRIP := python bin/strip-reply.py

## release: create a release
.PHONY: release
release:
	@rm -rf roc-tutorial.zip
	@zip -r roc-tutorial.zip \
	src \
	out \
	-x \*~

## run: re-run all examples
.PHONY: run
run: ${OUT_FILES}

out/hello-roc.out: src/hello-roc.roc
	@roc repl < $< | ${STRIP} > $@

out/run-repl.out: src/run-repl.roc
	@roc repl < $< > $@
