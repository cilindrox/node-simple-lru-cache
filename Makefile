
NODE_MODULES=node_modules/.bin
MOCHA=$(NODE_MODULES)/_mocha
ISTANBUL=$(NODE_MODULES)/istanbul
COVERAGE_REPORT=coverage/lcov.info
COVERALLS=$(NODE_MODULES)/coveralls


test:
	@$(MOCHA)

test-cov:
	@$(ISTANBUL) cover $(MOCHA) --report lcovonly -- \
		--reporter dot

bench:
	@node benchmark/bench.js

clean:
	@rm -rf ./coverage

coveralls:
	cat $(COVERAGE_REPORT) | $(COVERALLS) \
		&& make clean


.PHONY: test bench test-cov clean
