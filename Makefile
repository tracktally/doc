PWD=$$(pwd)
SCRIPT_DIR=$(shell cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PROJ_ROOT=$(SCRIPT_DIR)/hugo/
BIN=$(SCRIPT_DIR)/assets/hugo

all: dev

.PHONY:
init:
	echo "init"

.PHONY:
dev:
	cd $(PROJ_ROOT) && $(BIN) serve

.PHONY:
build:
	cd $(PROJ_ROOT) && $(BIN) build

.PHONY:
clean:
	git clean -fdx
