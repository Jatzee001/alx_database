/*This script lists all databases on a MySQL server.
Prompt the user for MySQL password*/
mysql -u root -p"$MYSQL_PASSWORD" -e "SHOW DATABASES;" > updated_databases.txt