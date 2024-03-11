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

out/arithmetic.out: src/arithmetic.roc
	cat $< | roc repl 2>&1 | ${STRIP} > $@

out/call-max.out: src/call-max.roc
	cat $< | roc repl 2>&1 | ${STRIP} > $@

out/call-max-add.out: src/call-max-add.roc
	cat $< | roc repl 2>&1 | ${STRIP} > $@

out/hello-roc.out: src/hello-roc.roc
	cat $< | roc repl 2>&1 | ${STRIP} > $@

out/number-3.out: src/number-3.roc
	cat $< | roc repl 2>&1 | ${STRIP} > $@

out/nested-func-call.out: src/nested-func-call.roc
	cat $< | roc repl 2>&1 | ${STRIP} > $@

out/var-def.out: src/var-def.roc
	cat $< | roc repl 2>&1 | ${STRIP} > $@

out/var-redef.out: src/var-def.roc src/var-redef.roc
	cat $^ | roc repl 2>&1 | ${STRIP} | tail -n+2 | head -n1 > $@
