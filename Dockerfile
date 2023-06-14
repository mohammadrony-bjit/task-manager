# Use the official NGINX base image
FROM php:apache

RUN docker-php-ext-install mysqli
