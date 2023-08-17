-- Set the MySQL root password
MYSQL_ROOT_PASSWORD="08105659056Mtn."
USER_0D_1_PASSWORD="qwertyuiop"

-- Execute the 1-create_user.sql script
mysql -hlocalhost -uroot -p$MYSQL_ROOT_PASSWORD < 1-create_user.sql

-- Execute the 0-privileges.sql script
mysql -hlocalhost -uuser_0d_1 -p$USER_0D_1_PASSWORD < 0-privileges.sql