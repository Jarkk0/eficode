# syntax=docker/dockerfile:1
#Use node version 16.10.0 and Alpine linux version 3.14 
FROM node:16.10.0-alpine3.14

#Create application directory
RUN mkdir -p /app

#Tell what is main application directory
WORKDIR /app

#Copy app package and also package.lock files
COPY ["backend/package.json", "backend/package-lock.json", "./"]

#Install node packages
RUN npm install

#Copy current directory of our docker
COPY . .

#Expose container on port 9000
EXPOSE 9000

#Start the app
CMD  [ "node", "index.js"]