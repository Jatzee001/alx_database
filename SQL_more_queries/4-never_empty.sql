-- Set the MySQL root password
MYSQL_ROOT_PASSWORD="08105659056Mtn."
DATABASE_NAME="function_name" # Accept the database name as an argument

-- Check if the id_not_null table exists
EXIST=$(mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME -e "SHOW TABLES LIKE 'id_not_null';")
if [ -z "$EXIST" ]; then
    echo "id_not_null doesn't exist"
else
    echo "id_not_null exists"
fi

-- Execute the 4-never_empty.sql script to create the table
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME < 4-never_empty.sql

-- Insert data into the id_not_null table
echo 'INSERT INTO id_not_null (id, name) VALUES (89, "Holberton School");' | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME

-- Insert data without specifying the id (default value used)
echo 'INSERT INTO id_not_null (name) VALUES ("Holberton");' | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME

-- Attempt to insert data without specifying the name (expected error)
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME -e "INSERT INTO id_not_null (id) VALUES (333);"

-- Display the content of the id_not_null table
echo 'INSERT INTO id_not_null (name) VALUES ("Holberton");' | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME

-- Display the content of the id_not_null table again
echo 'INSERT INTO id_not_null (id, name) VALUES (89, "Holberton School");' | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME