-- Set the MySQL root password
MYSQL_ROOT_PASSWORD="your_root_password"
DATABASE_NAME="$1" # Accept the database name as an argument

-- Execute the SQL commands to create the id_not_null table
echo "USE $DATABASE_NAME;
CREATE TABLE id_not_null (
    id INT NOT NULL DEFAULT 1,
    name VARCHAR(256)
);" | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD