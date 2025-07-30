FROM php:8.1-fpm

# Install dependencies
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    git unzip curl zip \
    libzip-dev libpng-dev \
    && docker-php-ext-install zip pdo pdo_mysql

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www/panel

# Salin project kamu ke dalam image jika perlu (jika pakai bind mount di docker-compose, ini boleh diabaikan)
# COPY . .

# Install Laravel dan dependencies
RUN composer install --no-interaction --prefer-dist --optimize-autoloader

# Ubah permission
RUN chown -R www-data:www-data /var/www/panel
