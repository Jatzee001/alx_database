-- Set the MySQL root password
MYSQL_ROOT_PASSWORD="your_root_password"

-- Execute the 0-privileges.sql script
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD < 0-privileges.sql

-- Check if users exist and display the correct output
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD -e "SELECT user FROM mysql.user WHERE user IN ('user_0d_1', 'user_0d_2');"

-- Display user_0d_1 privileges
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD -e "SHOW GRANTS FOR 'user_0d_1'@'localhost';"
