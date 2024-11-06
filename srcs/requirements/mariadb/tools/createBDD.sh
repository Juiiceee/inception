#!/bin/bash
set -e

echo "BDD_NAME: $BDD_NAME"
echo "BDD_USER_NAME: $BDD_USER_NAME"
echo "BDD_USER_PASSWORD: $BDD_USER_PASSWORD"
echo "BDD_ROOT_PASSWORD: $BDD_ROOT_PASSWORD"

if [ ! -d "/var/lib/mysql/mysql" ]; then
    echo "Initialisation de la base de données"
    mysql_install_db --user=mysql --datadir=/var/lib/mysql
fi

mysqld_safe --datadir=/var/lib/mysql &

until mysqladmin ping --silent; do
    echo "Waiting for MariaDB..."
    sleep 2
done

mysql -u root -p${BDD_ROOT_PASSWORD} -e "CREATE DATABASE IF NOT EXISTS \`${BDD_NAME}\`;"
mysql -u root -p${BDD_ROOT_PASSWORD} -e "CREATE USER IF NOT EXISTS \`${BDD_USER_NAME}\`@'%' IDENTIFIED BY '${BDD_USER_PASSWORD}';"
mysql -u root -p${BDD_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON \`${BDD_NAME}\`.* TO \`${BDD_USER_NAME}\`@'%';"
mysql -u root -p${BDD_ROOT_PASSWORD} -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${BDD_ROOT_PASSWORD}';"
mysql -u root -p${BDD_ROOT_PASSWORD} -e "FLUSH PRIVILEGES;"

mysqladmin -u root -p${BDD_ROOT_PASSWORD} shutdown

exec mysqld_safe