#SETTINGS

DCOMPOSE = srcs/docker-compose.yml

all: build up

build:
	docker compose -f $(DCOMPOSE) build

up:
	docker compose -f $(DCOMPOSE) up

down:
	docker compose -f $(DCOMPOSE) down

	

