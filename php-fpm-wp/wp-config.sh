#!/bin/sh
wp config create --allow-root --dbhost=mysql --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD}
wp db create --allow-root
wp core install --allow-root --url=localhost --title="InitLab" --admin_user=wpcli --admin_password=wpcli --admin_email=info@wp-cli.org
wp theme activate typecore --allow-root
# plugins
# wp plugin install https://downloads.wordpress.org/plugin/loco-translate.2.3.0.zip --activate --allow-root
wp plugin install loco-translate --activate --allow-root
wp plugin install contact-form-7 --activate --allow-root
