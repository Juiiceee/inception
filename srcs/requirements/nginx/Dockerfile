FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y

RUN apt install -y nginx openssl vim curl

RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/inception.key -out /etc/nginx/ssl/inception.crt -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=rgiraud"

COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

CMD ["nginx", "-g", "daemon off;"]
