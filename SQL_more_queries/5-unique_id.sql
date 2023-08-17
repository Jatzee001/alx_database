-- Set the MySQL root password
MYSQL_ROOT_PASSWORD="08105659056Mtn."
DATABASE_NAME="$1" # Accept the database name as an argument

-- Execute the SQL commands to create the unique_id table
echo "USE $DATABASE_NAME;
CREATE TABLE unique_id (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(256),
    PRIMARY KEY (id),
    UNIQUE (id)
);" | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD