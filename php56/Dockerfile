FROM php:5.6-fpm
RUN apt-get -y update
RUN apt-get -y install php5-mysql vim libmcrypt-dev
RUN docker-php-ext-install mysqli pdo pdo_mysql mcrypt
RUN cp /usr/share/php5/php.ini-production /usr/local/etc/php/php.ini
