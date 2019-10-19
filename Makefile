CONTAINER_GAS ?= cake-gas-developer
WORKSPACE_DIR = ../workspace

build:
	@if [ ! -d $(WORKSPACE_DIR) ]; \
		then echo "mkdir -p $(WORKSPACE_DIR)"; mkdir -p $(WORKSPACE_DIR); \
		fi
	@docker-compose build

run:
	@docker-compose up -d

bash:
	@docker exec -it $(CONTAINER_GAS) /bin/bash

start:
	@docker-compose start

stop:
	@docker-compose stop

