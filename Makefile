# Variables
COMPOSE_FILE=docker-compose.yml

# Commands
build:
	docker-compose -f $(COMPOSE_FILE) build

up:
	docker-compose -f $(COMPOSE_FILE) up -d

down:
	docker-compose -f $(COMPOSE_FILE) down

start:
	docker-compose -f $(COMPOSE_FILE) start

stop:
	docker-compose -f $(COMPOSE_FILE) stop

restart:
	docker-compose -f $(COMPOSE_FILE) restart

logs:
	docker-compose -f $(COMPOSE_FILE) logs -f

ps:
	docker-compose -f $(COMPOSE_FILE) ps

# Commands to enter containers
enter-psiostore: 
	docker exec -it psiostore /bin/sh 

enter-angular:
	docker exec -it angular /bin/sh


enter-node:
	docker exec -it node /bin/sh

enter-firebase:
	docker exec -it firebase /bin/sh

enter-database:
	docker exec -it database /bin/bash

enter-symfony:
	docker exec -it symfony /bin/bash

.PHONY: build up down start stop restart logs ps enter-node enter-angular enter-firebase enter-database enter-symfony
