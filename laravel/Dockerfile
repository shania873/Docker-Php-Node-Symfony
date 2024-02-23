FROM php:7.4-apache

# Installer les dépendances nécessaires
RUN apt-get update \
    && apt-get install -y \
        libmcrypt-dev \
        default-mysql-client \
        libmagickwand-dev --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# Activer l'extension PHP mcrypt
RUN docker-php-ext-install pdo_mysql \
    && pecl install mcrypt-1.0.4 \
    && docker-php-ext-enable mcrypt

# Activer le module Apache mod_rewrite
RUN a2enmod rewrite

# Copier le code source de votre projet dans le conteneur
COPY . /var/www/html

# Définir les autorisations correctes pour le répertoire de travail
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html/storage

# Exposer le port Apache
EXPOSE 80

# Démarrez Apache au lancement du conteneur
CMD ["apache2-foreground"]
