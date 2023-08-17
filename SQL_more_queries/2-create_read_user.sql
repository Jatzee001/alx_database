-- Set the MySQL root password
MYSQL_ROOT_PASSWORD="08105659056Mtn."
USER_0D_2_PASSWORD="qwertyuiop1234"

-- Create the database hbtn_0d_2 if not exists
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS hbtn_0d_2;"

-- Create user user_0d_2 if not exists
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD -e "CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost' IDENTIFIED BY '$USER_0D_2_PASSWORD';"

-- Grant SELECT privilege to user_0d_2 on the hbtn_0d_2 database
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD -e "GRANT USAGE ON *.* TO 'user_0d_2'@'localhost';"
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD -e "GRANT SELECT ON hbtn_0d_2.* TO 'user_0d_2'@'localhost';"

-- Execute the 0-privileges.sql script
cat 0-privileges.sql | mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD