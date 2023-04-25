FROM php:8.1.1-apache as img1
COPY /html /var/www/html
RUN apt update -y && apt upgrade -y
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

RUN chown -R www-data:www-data .
RUN chmod 774 .

FROM mysql:latest as img2
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=password

COPY /sql/redlock-db.sql /docker-entrypoint-initdb.d/