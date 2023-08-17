-- Set the MySQL root password
MYSQL_ROOT_PASSWORD="08105659056Mtn."
DATABASE_NAME="hbtn_0d_2"

-- Check if the force_name table exists
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME -e "DESCRIBE force_name;" 2>&1 | grep -q 'Table.*does not exist' && echo "force_name doesn't exist" || echo "force_name exists"

-- Execute the 3-force_name.sql script to create the table
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME < 3-force_name.sql

-- Insert data into the force_name table
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME -e 'INSERT INTO force_name (id, name) VALUES (89, "Holberton School");'

-- Display the content of the force_name table
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME -e 'SELECT * FROM force_name;'

-- Attempt to insert data without specifying the name (expected error)
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME -e "INSERT INTO force_name (id) VALUES (333);"

-- Display the content of the force_name table again
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME -e 'SELECT * FROM force_name;'