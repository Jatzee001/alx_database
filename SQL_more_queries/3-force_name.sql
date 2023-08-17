-- Set the MySQL root password
MYSQL_ROOT_PASSWORD="your_root_password"
DATABASE_NAME="hbtn_0d_2"

-- Execute the 3-force_name.sql script to create the table
cat 3-force_name.sql | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME

-- Insert data into the force_name table
echo 'INSERT INTO force_name (id, name) VALUES (89, "Holberton School");' | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME

-- Insert data without specifying the name (expected error)
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME -e "INSERT INTO force_name (id) VALUES (333);"

-- Attempt to insert data with a NULL name (expected error)
echo 'INSERT INTO force_name (id, name) VALUES (333, NULL);' | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME

-- Display the content of the force_name table
cat 3-show_data.sql | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD $DATABASE_NAME