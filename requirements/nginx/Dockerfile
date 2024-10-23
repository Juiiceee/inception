FROM debian:latest

RUN apt update && apt upgrade && apt install -y \
	nginx

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY index.html /www/index.html

CMD ["nginx", "-g", "daemon off;"]