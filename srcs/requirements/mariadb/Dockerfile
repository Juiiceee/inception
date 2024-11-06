FROM debian:buster

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y mariadb-server

EXPOSE 3306

COPY ./conf/server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools /var/www/

RUN chmod +x /var/www/createBDD.sh

ENTRYPOINT ["/var/www/createBDD.sh"]
