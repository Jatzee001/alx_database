-- Set the MySQL root password
MYSQL_ROOT_PASSWORD="08105659056Mtn."
DATABASE_NAME="$1" # Accept the database name as an argument

-- Create the id_not_null table using SQL commands
echo "USE $DATABASE_NAME;
CREATE TABLE id_not_null (
    id INT NOT NULL DEFAULT 1,
    name VARCHAR(256)
);" | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD