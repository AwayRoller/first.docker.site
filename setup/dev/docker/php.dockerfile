FROM php:7.2-fpm
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y libpng-dev libxml2-dev libpq-dev git locales libicu-dev gettext libzip-dev
RUN docker-php-ext-configure intl
RUN docker-php-ext-install mysqli pdo pdo_mysql gd soap bcmath zip gettext intl
RUN pecl install -o -f xdebug \
    &&  rm -rf /tmp/pear \
    &&  docker-php-ext-enable xdebug
RUN curl https://getcomposer.org/download/1.8.4/composer.phar > /usr/local/bin/composer
RUN chmod 755 /usr/local/bin/composer
ENV XDEBUG_CONFIG="idekey=anything-works-here"
ENV PHP_IDE_CONFIG="serverName=Docker"