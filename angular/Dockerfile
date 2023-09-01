# Use a Node.js base image
FROM node:14-slim

# Set the working directory
WORKDIR /usr/src/www

# Install Ionic CLI and Angular CLI
RUN npm install -g @ionic/cli@latest @angular/cli@latest

# Expose the port on which the application will run
EXPOSE 8100