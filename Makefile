.PHONY: fmt lint test

run:
	@bash kata

test:
	@bash ./bin/bats ./tests/kata_test.bash

fmt:
	./bin/shfmt -w -i 4 -sr -ci kata

lint:
	./bin/shellcheck kata tests/kata_test.bash

install:
	chmod +x ./install.sh || true
	@bash ./install.sh
