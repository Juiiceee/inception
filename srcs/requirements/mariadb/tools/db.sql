CREATE DATABASE IF NOT EXISTS wordpress;

CREATE USER IF NOT EXISTS 'juiceee'@'%' IDENTIFIED BY 'loul';

GRANT ALL PRIVILEGES ON wordpress.* TO 'juiceee'@'%';

FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'routi';
