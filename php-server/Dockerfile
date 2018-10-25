FROM php:7.0.32-apache

RUN docker-php-ext-install pdo \
    && docker-php-ext-install pdo_mysql \
	&& a2enmod rewrite \
	&& echo "ServerName localhost" >> /etc/apache2/apache2.conf \
	&& usermod -u 1000 www-data \
	&& usermod -G staff www-data \
    && apt-get update \
    && apt-get install -y libyaml-dev libmemcached-dev zlib1g-dev git \
    && pecl install memcached-3.0.4 \
    && pecl install xdebug-2.6.0 \
    && pecl install yaml-2.0.0 \
    && docker-php-ext-enable xdebug yaml memcached