# syntax=docker/dockerfile:1
FROM node:16.10.0-alpine3.14

RUN mkdir -p /app
WORKDIR /app
COPY ["frontend/package.json", "frontend/package-lock.json", "./"]

RUN npm install

COPY . .

EXPOSE 8000

CMD  [ "npm", "start"]