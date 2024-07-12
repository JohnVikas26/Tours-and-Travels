FROM php:5.6-apache

WORKDIR /var/www/html

COPY . /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

RUN a2enmod rewrite

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN chown -R www-data:www-data /var/www/html

EXPOSE 8081

CMD ["apache2-foreground"]