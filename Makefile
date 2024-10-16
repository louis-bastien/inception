#SETTINGS

COMPOSE_FILE = srcs/compose.yml

all: build up

build:
	docker compose -f $(COMPOSE_FILE) build

up:
	docker compose -f $(COMPOSE_FILE) up -d

down:
	docker compose -f $(COMPOSE_FILE) down

clean:
	docker compose -f $(COMPOSE_FILE) down -v --rmi all 

destroy:
	docker compose -f $(COMPOSE_FILE) down -v --rmi all 
	docker system prune -f

logs:
	docker compose -f $(COMPOSE_FILE) logs


enter:
	@CONTAINER_ID=$$(docker-compose -f $(COMPOSE_FILE) ps -q $(filter-out $@,$(MAKECMDGOALS))); \
	if [ -n "$$CONTAINER_ID" ]; then \
		docker exec -it $$CONTAINER_ID /bin/sh; \
	else \
		echo "Container for service '$(filter-out $@,$(MAKECMDGOALS))' is not running"; \
	fi

%:
	@:

rebuild : down clean build up

.PHONY: all build up down clean destroy logs rebuild

	

