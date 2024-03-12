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

out/interp-%.out: src/interp-%.roc
	cat $< | roc repl 2>&1 | ${STRIP} > $@

out/interp-var-redef.out: src/interp-var-def.roc src/interp-var-redef.roc
	cat $^ | roc repl 2>&1 | ${STRIP} | tail -n+2 | head -n1 > $@

out/%.out: tmp/%
	@mkdir -p tmp
	tmp/$* 2>&1 > $@

tmp/%: src/%.roc
	roc build --output $@ $<

out/order-func-3-bad-name.out: src/order-func-3-bad-name.roc
	roc dev $< 2>&1 | ${STRIP} > $@

out/order-func-3-stdout.out: src/order-func-3-stdout.roc
	roc dev $< 2>&1 | ${STRIP} > $@
