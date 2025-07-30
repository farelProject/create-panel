sudo su
apt update && apt upgrade
docker-compose up -d
docker-compose run --rm panel php artisan p:user:make
