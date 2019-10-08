FROM php:7.2-fpm
RUN apt-get update -y
RUN apt-get upgrade -y
RUN pecl install -o -f xdebug \
    &&  rm -rf /tmp/pear \
    &&  docker-php-ext-enable xdebug
ENV XDEBUG_CONFIG="idekey=anything-works-here"
ENV PHP_IDE_CONFIG="serverName=Docker"