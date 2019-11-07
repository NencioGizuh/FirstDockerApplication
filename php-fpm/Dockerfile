FROM php:7.2-fpm-alpine

RUN apk update && apk add \
    zip \
    unzip \ 
    git \
    curl \
    wget

RUN docker-php-ext-install pdo_mysql
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

CMD ["php-fpm"]
