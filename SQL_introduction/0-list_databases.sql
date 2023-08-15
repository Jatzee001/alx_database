/*This script lists all databases on a MySQL server.
Prompt the user for MySQL password*/
read -s -p "Enter MySQL password: " MYSQL_PASSWORD
echo

/*Connect to the MySQL server and execute the query
List all databases*/
mysql -u root -p"$MYSQL_PASSWORD" -e "SHOW DATABASES;" > initial_databases.txt

/*Create additional databases if needed
Run the query again and capture the updated databases*/
mysql -u root -p"$MYSQL_PASSWORD" -e "SHOW DATABASES;" > updated_databases.txt