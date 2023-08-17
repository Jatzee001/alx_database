-- Set the MySQL root password
MYSQL_ROOT_PASSWORD="08105659056Mtn."
DATABASE_NAME="hbtn_0d_2"

-- Execute the 3-force_name.sql script to create the table
cat 3-force_name.sql | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME

-- Insert data into the force_name table
echo 'INSERT INTO force_name (id, name) VALUES (89, "Holberton School");' | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME

-- Display the content of the force_name table
echo 'SELECT * FROM force_name;' | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME

-- Attempt to insert data without specifying the name
echo 'INSERT INTO force_name (id) VALUES (333);' | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME

-- Display the content of the force_name table again
echo 'SELECT * FROM force_name;' | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME