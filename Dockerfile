FROM php:8.0-apache

# Copy all project files to the web server root
COPY . /var/www/html/

# Set the document root in Apache
RUN echo "DocumentRoot /var/www/html" >> /etc/apache2/sites-available/000-default.conf

RUN chmod 644 /var/www/html/form.php