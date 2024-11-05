all:
	@mkdir -p /home/lbehr/data/wordpress
	@mkdir -p /home/lbehr/data/mariadb
	@docker-compose -f ./srcs/docker-compose.yaml up

down:
	@docker-compose -f ./srcs/docker-compose.yaml down

re:
	@docker-compose -f srcs/docker-compose.yaml up --build

clean:
	@docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\
	rm -rf /home/lbehr/data/wordpress
	rm -rf /home/lbehr/data/mariadb

.PHONY: all re down clean
