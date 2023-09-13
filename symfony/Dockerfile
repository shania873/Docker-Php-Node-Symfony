# Dockerfile pour Symfony avec PHP 8
FROM php:8.1-apache

WORKDIR /var/www/html

COPY . .



RUN apt-get update && apt-get install -y \
    libicu-dev \
    && docker-php-ext-install -j$(nproc) intl

RUN apt-get install -y \
    libzip-dev \
    && docker-php-ext-install zip

RUN apt-get install -y \
    unzip \
    wget \
    curl \
    sudo


RUN apt update \
    && apt install -y zlib1g-dev g++ git libicu-dev zip libzip-dev zip \
    && docker-php-ext-install intl opcache pdo pdo_mysql \
    && pecl install apcu \
    && docker-php-ext-enable apcu \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip


RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | sudo -E bash
RUN apt install symfony-cli

COPY apache.conf /etc/apache2/sites-available/000-default.conf

COPY php.conf /etc/apache2/conf-available/
RUN a2enconf php
RUN a2enmod rewrite
RUN chown -R www-data:www-data /var/www/html
EXPOSE 8000

RUN git config --global user.email "vanaeca@hotmail.com"
RUN git config --global user.name "shania873"


CMD ["apache2-foreground"]
