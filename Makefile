.PHONY: check test quality verify run

check:
	ailang lock --check
	ailang check --package .

test:
	ailang test --strict-bytecode --package .
	node --test test/*.test.mjs
	python3 -m unittest discover -s test -p '*_test.py'

quality:
	ailang pkg quality --json . > quality-local.json

verify: check test quality

run:
	python3 server.py
