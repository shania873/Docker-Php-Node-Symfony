# Utiliser une image de base Ubuntu
FROM ubuntu:latest

# Mise à jour du système et installation de Java et de Maven
RUN apt-get update && apt-get install -y \
    openjdk-8-jdk \
    maven

# Exposer le port de l'application Spring Boot
EXPOSE 8686

# Commande pour exécuter l'application Spring Boot
CMD ["java", "-jar"]