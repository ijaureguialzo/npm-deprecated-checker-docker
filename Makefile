#!make

help: _header
	${info }
	@echo Opciones:
	@echo ------------------------------
	@echo build
	@echo workspace
	@echo clean
	@echo ------------------------------

_header:
	@echo ------------------------------
	@echo Dependency Deprecation Checker
	@echo ------------------------------

build:
	@docker compose build --pull

workspace:
	@docker compose run --rm dep-checker /bin/bash

clean:
	@docker compose down -v --remove-orphans

