FROM node:18-alpine3.15

# Installation d'OpenJDK (Java) et d'autres dépendances
RUN apk add --no-cache openjdk11
RUN npm install -g firebase-tools
RUN mkdir app
WORKDIR /app
EXPOSE 3033