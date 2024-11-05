#SETTINGS

export COMPOSE_PROJECT_NAME=
COMPOSE_FILE = srcs/compose.yml


all: build up

build:
	sudo docker-compose -f $(COMPOSE_FILE) build

up:
	sudo docker-compose -f $(COMPOSE_FILE) up -d

down:
	sudo docker-compose -f $(COMPOSE_FILE) down

clean:
	sudo docker-compose -f $(COMPOSE_FILE) down -v --rmi all  

destroy:
	sudo docker-compose -f $(COMPOSE_FILE) down -v --rmi all 
	sudo docker system prune -f

logs:
	sudo docker-compose -f $(COMPOSE_FILE) logs


enter:
	@CONTAINER_ID=$$(sudo docker-compose -f $(COMPOSE_FILE) ps -q $(filter-out $@,$(MAKECMDGOALS))); \
	if [ -n "$$CONTAINER_ID" ]; then \
		sudo docker exec -it $$CONTAINER_ID /bin/sh; \
	else \
		echo "Container for service '$(filter-out $@,$(MAKECMDGOALS))' is not running"; \
	fi

%:
	@:

rebuild : down clean build up

.PHONY: all build up down clean destroy logs rebuild

	

