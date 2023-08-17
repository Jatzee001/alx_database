-- Set the MySQL root password
MYSQL_ROOT_PASSWORD="your_root_password"
DATABASE_NAME="$1" # Accept the database name as an argument

-- Execute the 4-never_empty.sql script to create the table
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME < 4-never_empty.sql

-- Insert data into the id_not_null table
echo 'INSERT INTO id_not_null (id, name) VALUES (89, "Holberton School");' | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME

-- Display the content of the id_not_null table
echo 'SELECT * FROM id_not_null;' | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME

-- Insert data without specifying the id (default value used)
echo 'INSERT INTO id_not_null (name) VALUES ("Holberton");' | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME

-- Display the content of the id_not_null table again
echo 'SELECT * FROM id_not_null;' | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME