FROM node:18-alpine3.15

RUN apk add --no-cache openjdk11
RUN npm install -g firebase-tools
RUN mkdir www
WORKDIR /www
EXPOSE 3033