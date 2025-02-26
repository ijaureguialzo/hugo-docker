#!make

help: _header
	${info }
	@echo Opciones:
	@echo --------------------------------
	@echo workspace / workspace-root
	@echo clean
	@echo --------------------------------

_header:
	@echo ----
	@echo Hugo
	@echo ----

workspace:
	@docker compose run --service-ports --rm hugo /bin/sh

workspace-root:
	@docker compose run --service-ports --rm -u root hugo /bin/sh

clean:
	@docker compose down -v --remove-orphans
