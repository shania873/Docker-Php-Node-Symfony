

FROM node:18-alpine

RUN apk --no-cache add openjdk11

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
ENV PATH $PATH:$JAVA_HOME/bin

RUN npm install expo-cli@latest -g 
RUN npm install -g react-native-cli
RUN npm install @expo/ngrok@^4.1.0 --global

EXPOSE 3000

