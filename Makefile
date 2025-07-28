DOCKER_COMPOSE		= docker compose
DOCKER_IMAGE		= docker image
DOCKER_VOLUME		= docker volume

DOCKER_COMPOSE_FILE	= ./docker-compose.yml

UP_FLAGS		= -d --build

up:
	${DOCKER_COMPOSE} -f ${DOCKER_COMPOSE_FILE} up ${UP_FLAGS}

down:
	${DOCKER_COMPOSE} -f ${DOCKER_COMPOSE_FILE} down

start:
	${DOCKER_COMPOSE} -f ${DOCKER_COMPOSE_FILE} start

stop:
	${DOCKER_COMPOSE} -f ${DOCKER_COMPOSE_FILE} stop

status:
	${DOCKER_COMPOSE} -f ${DOCKER_COMPOSE_FILE} ps

clean: down
	${DOCKER_IMAGE} rm $$(${DOCKER_IMAGE} list -aq)
	${DOCKER_VOLUME} rm $$(${DOCKER_VOLUME} list -q)

.PHONY: up down start stop status clean
