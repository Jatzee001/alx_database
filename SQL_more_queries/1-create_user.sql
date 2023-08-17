-- Set the MySQL root password
MYSQL_ROOT_PASSWORD="08105659056Mtn."

-- Execute the 1-create_user.sql script
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD < 1-create_user.sql

-- Execute the 0-privileges.sql script
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD < 0-privileges.sql
