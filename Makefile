test:
	./node_modules/.bin/_mocha --reporter spec

bench:
	npm install ttl-lru-cache
	npm install lru-cache
	node benchmark/bench.js

.PHONY: test bench
