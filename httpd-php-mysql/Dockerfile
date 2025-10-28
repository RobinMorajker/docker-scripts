FROM arm64v8/php:8.2-apache

RUN apt-get update \
    && apt-get install -y \
        libzip-dev \
        zip \
    && docker-php-ext-install \
        pdo \
        pdo_mysql \
        zip \
    && pecl install redis \
    && docker-php-ext-enable redis \
    && rm -rf /var/lib/apt/lists/*

# Enable Apache rewrite for frameworks like Laravel/CodeIgniter
RUN a2enmod rewrite
