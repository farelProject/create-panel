# Gunakan base image PHP dengan ekstensi yang dibutuhkan
FROM php:8.2-fpm

# Install dependencies sistem
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    curl \
    libzip-dev \
    zip \
    && docker-php-ext-install zip pdo pdo_mysql

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Set workdir ke dalam container
WORKDIR /var/www/html

# Salin semua file proyek Laravel ke dalam container
COPY . .

# Install dependencies Laravel
RUN composer install --no-interaction --prefer-dist --optimize-autoloader

# Set permission untuk Laravel
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

# Expose port (jika pakai Laravel dev server)
EXPOSE 8000

CMD ["php-fpm"]
