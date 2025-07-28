WEBSITE_VOLUME		= ./www/html

DOCKER_COMPOSE_FILE	= ./docker-compose.yml
VOLUME_LIST		= $(WEBSITE_VOLUME)

up:
	docker compose -f $(DOCKER_COMPOSE_FILE) up -d --build

down:
	docker compose -f $(DOCKER_COMPOSE_FILE) down

start:
	docker compose -f $(DOCKER_COMPOSE_FILE) start

stop:
	docker compose -f $(DOCKER_COMPOSE_FILE) stop

status:
	docker compose -f $(DOCKER_COMPOSE_FILE) ps

clean: down
	docker image rm $$(docker image list -aq)
	docker volume rm $$(docker volume list -q)

.PHONY: up down start stop status clean
