DOCKER-RUN = docker compose run -e TERM --rm --entrypoint=""
BUNDLE-EXEC = bundle exec

build:
	docker compose build

up:
	docker compose up

down:
	docker compose down

sh:
	$(DOCKER-RUN) app bash

debug:
	$(DOCKER-RUN) app $(BUNDLE-EXEC) rdbg -A app 12345
