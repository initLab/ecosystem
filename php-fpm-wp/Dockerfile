FROM php:7-fpm-alpine
RUN apk add --no-cache openldap-dev mariadb-dev mariadb-client libxml2-dev libpng-dev
#RUN apk add openldap-dev mariadb-dev libxml
#RUN PACKAGES="ldap mysqli"
#RUN for p in ${PACKAGES}; do echo installing $p; docker-php-ext-configure $p; docker-php-ext-install $p; docker-php-ext-enable $p; done
RUN docker-php-ext-configure ldap && docker-php-ext-install ldap
RUN docker-php-ext-configure mysqli && docker-php-ext-install mysqli
RUN docker-php-ext-configure xml && docker-php-ext-install xml
RUN docker-php-ext-configure xmlrpc && docker-php-ext-install xmlrpc
RUN docker-php-ext-configure opcache && docker-php-ext-install opcache
RUN docker-php-ext-configure gd && docker-php-ext-install gd
#CMD chown -R www-data /code/glpi

# set up wp-cli
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN wp --info

# download core
RUN wp core download --path=/wp-app --allow-root

WORKDIR /wp-app

# theme
COPY ./typecore /wp-app/wp-content/themes/typecore

# config
COPY wp-config.sh .
