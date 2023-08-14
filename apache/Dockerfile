FROM php:apache

# Installer PHP et les modules nécessaires
RUN apt-get update && apt-get install -y php libapache2-mod-php

# Activer le module PHP dans Apache
RUN a2enmod php

# Copier la configuration d'Apache
COPY apache.conf /usr/local/apache2/conf/httpd.conf

# Copier les fichiers du site
# COPY ../www /usr/local/apache2/htdocs/

EXPOSE 80