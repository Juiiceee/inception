FROM debian:bullseye

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y \
        php \
        php-fpm \
        php-mysql \
        php-cli \
        php-mbstring \
        gettext \
		wget \
        mariadb-client \
        curl && \
    rm -rf /etc/php/7.4/fpm/pool.d/www.conf && \
    mkdir -p /run/php

COPY ./tools/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

RUN chmod 755 /usr/local/bin/entrypoint.sh

EXPOSE 9000

ENTRYPOINT ["sh", "/usr/local/bin/entrypoint.sh"]
