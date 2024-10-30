DOCKER_COMPOSE = docker compose
COMPOSE_FILE = srcs/docker-compose.yaml
WORDPRESS_VOLUME_PATH = /home/jul/data/wordpress
MARIADB_VOLUME_PATH = /home/jul/data/mariadb

all: up

init:
	mkdir -p $(WORDPRESS_VOLUME_PATH)
	mkdir -p $(MARIADB_VOLUME_PATH)
	# sudo chown -R $(shell id -u):$(shell id -g) $(WORDPRESS_VOLUME_PATH)
	# sudo chown -R $(shell id -u):$(shell id -g) $(MARIADB_VOLUME_PATH)

up: init
	$(DOCKER_COMPOSE) -f $(COMPOSE_FILE) up -d
	# $(DOCKER_COMPOSE) -f $(COMPOSE_FILE) logs -f

down:
	$(DOCKER_COMPOSE) -f $(COMPOSE_FILE) down

clean:
	$(DOCKER_COMPOSE) -f $(COMPOSE_FILE) down --volumes --remove-orphans
	docker image rm -f $(shell docker image ls -aq)
	docker container rm -f $(shell docker container ls -aq)

fclean: clean
	$(DOCKER_COMPOSE) -f $(COMPOSE_FILE) rm -f -v
	sudo chmod -R 777 $(WORDPRESS_VOLUME_PATH)
	sudo chmod -R 777 $(MARIADB_VOLUME_PATH)
	sudo rm -rf $(WORDPRESS_VOLUME_PATH)
	sudo rm -rf $(MARIADB_VOLUME_PATH)

re: fclean up

.PHONY: all up down clean fclean re init
