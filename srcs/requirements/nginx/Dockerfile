FROM debian:buster

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y nginx openssl

RUN mkdir -p /etc/nginx/ssl \
&& echo "Nginx: setting up ssl ..." \
&& openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj "/C=FR/ST=IDF/L=PARIS/O=42Paris/CN=lbehr.42.fr" \
&& echo "Nginx: ssl is set up!"

EXPOSE 443

COPY ./conf/default/ /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]

