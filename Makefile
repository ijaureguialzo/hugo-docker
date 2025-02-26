#!make

help: _header
	${info }
	@echo Opciones:
	@echo --------------------------------
	@echo workspace
	@echo clean
	@echo --------------------------------

_header:
	@echo ----
	@echo Hugo
	@echo ----

workspace:
	@docker compose run --service-ports --rm hugo /bin/sh

clean:
	@docker compose down -v --remove-orphans
