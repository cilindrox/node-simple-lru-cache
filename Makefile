
test:
	@./node_modules/.bin/mocha --reporter spec

bench:
	@node benchmark/bench.js


.PHONY: test bench
