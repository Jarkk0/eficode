# syntax=docker/dockerfile:1
#Use node version 16.10.0 and Alpine linux version 3.14 
FROM node:16.10.0-alpine3.14

#Create application directory
RUN mkdir -p /app

#Tell what is main application directory
WORKDIR /app

#Copy app package and also package.lock files
COPY ["frontend/package.json", "frontend/package-lock.json", "./"]

#Install node packages
RUN npm install

#Copy current directory of our docker
COPY . .

#Expose container on port 8000
EXPOSE 8000

#Start the app
CMD  [ "npm", "start"]