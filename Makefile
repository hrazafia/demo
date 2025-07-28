DOCKER_COMPOSE		= docker compose

DOCKER_COMPOSE_FILE	= ./docker-compose.yml
BULDFLAG		= -d --build

up:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up $(BUILDFLAG)

down:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down

start:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) start

stop:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop

status:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) ps

clean: down
	docker image rm $$(docker image list -aq)
	docker volume rm $$(docker volume list -q)

.PHONY: up down start stop status clean
