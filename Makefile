#SETTINGS

DCOMPOSE = srcs/compose.yml

all: build up

build:
	docker compose -f $(DCOMPOSE) build

up:
	docker compose -f $(DCOMPOSE) up

down:
	docker compose -f $(DCOMPOSE) down

clean:
	docker compose -f $(DCOMPOSE) down -v --rmi all 

destroy:
	docker compose -f $(DCOMPOSE) down -v --rmi all 
	docker system prune -f

logs:
	docker compose -f $(DCOMPOSE) logs

rebuild : down clean build up

.PHONY: all build up down clean destroy logs rebuild

	

