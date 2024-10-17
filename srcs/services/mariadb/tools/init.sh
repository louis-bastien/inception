#!/bin/sh

# Start MariaDB in safe mode in the background
mysqld_safe &

# Wait until MariaDB is ready to accept connections
while ! mysqladmin ping --silent; do
    echo "Waiting for MariaDB to be available..."
    sleep 2
done

# Check if the database/user exist, if not create them
if ! mysql -u root -e "USE $DB_NAME"; then
    echo "Creating WordPress database and user..."
    mysql -u root -e "CREATE DATABASE $DB_NAME;"
    mysql -u root -e "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
    mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';"
    mysql -u root -e "FLUSH PRIVILEGES;"
else
    echo "Database already exists."
fi

# Stop background process and start it agin in foreground
mysqladmin stop
mysqld_safe