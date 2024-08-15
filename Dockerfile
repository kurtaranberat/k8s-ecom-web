FROM php:7.4-apache 

RUN apt update -y 

RUN docker-php-ext-install mysqli pdo pdo_mysql 

COPY ./app /var/www/html/

ENV DB_HOST=mariadb-service 


EXPOSE 80 

