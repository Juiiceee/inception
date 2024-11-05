FROM debian:buster

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y mariadb-server

EXPOSE 3306

COPY ./conf/server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools /var/www/

RUN service mysql start && mysql < /var/www/db.sql && rm -f /var/www/db.sql;

CMD ["mysqld"]
