-- Set the MySQL root password
MYSQL_ROOT_PASSWORD="your_root_password"
USER_0D_2_PASSWORD="user_0d_2_pwd"

-- Check if user user_0d_2 exists
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD -e "SELECT user FROM mysql.user WHERE user = 'user_0d_2';" 2>&1 | grep -q 'user_0d_2' && echo "user_0d_2 exists" || echo "user_0d_2 doesn't exist"

-- Create the database hbtn_0d_2 if not exists
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS hbtn_0d_2;"

-- Create user user_0d_2 if not exists
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD -e "CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost' IDENTIFIED BY '$USER_0D_2_PASSWORD';"

-- Grant SELECT privilege to user_0d_2 on the hbtn_0d_2 database
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD -e "GRANT USAGE ON *.* TO 'user_0d_2'@'localhost';"
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD -e "GRANT SELECT ON hbtn_0d_2.* TO 'user_0d_2'@'localhost';"

-- Try to login with user_0d_2
mysql -hlocalhost -uuser_0d_2 -p$USER_0D_2_PASSWORD -e "SHOW DATABASES;"

-- Execute the 0-privileges.sql script
cat 0-privileges.sql | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD