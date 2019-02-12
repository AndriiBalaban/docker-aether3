#FROM php:7.0.32-apache
#
#RUN docker-php-ext-install pdo \
#    && docker-php-ext-install pdo_mysql \
#    && a2enmod rewrite \
#	&& echo "ServerName localhost" >> /etc/apache2/apache2.conf \
#	&& usermod -u 1000 www-data \
#	&& usermod -G staff www-data \
#	&& echo "deb http://ftp.de.debian.org/debian stretch main " > /etc/apt/sources.list \
#	&& apt-get update \
#	&& apt-get install -y libyaml-dev mc htop\
#	&& pecl install xdebug-2.6.0 \
#    && pecl install yaml-2.0.0 \
#    && docker-php-ext-enable xdebug yaml \
#    && apt-get install -y libmemcached-dev zlib1g-dev git \
#    && pecl install memcached-3.0.4 \
#    && docker-php-ext-enable memcached

FROM ubuntu:16.04

RUN apt-get update && apt-get install -y --no-install-recommends \
     apt-utils apache2 apache2-dev \
    && apt-get install -y nano mc htop unzip php-xml php7.0-mbstring php7.0-zip php7.0-mysql php-dev \
       libyaml-dev php-curl libfontconfig libxext6 libxrender-dev php-memcached memcached php-intl \
       libapache2-mod-php libmemcached-dev zlib1g-dev git\
    && pecl install yaml-2.0.0 && pecl install xdebug-2.6.0 \
    && a2enmod rewrite \
    && echo "ServerName localhost" >> /etc/apache2/apache2.conf \
    && usermod -u 1000 www-data \
    && usermod -G staff www-data

COPY apache2-foreground /usr/local/bin

EXPOSE 80
CMD ["apache2-foreground"]