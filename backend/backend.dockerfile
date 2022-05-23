# syntax=docker/dockerfile:1
FROM node:16.10.0-alpine3.14

RUN mkdir -p /app
WORKDIR /app
COPY ["backend/package.json", "backend/package-lock.json", "./"]

RUN npm install

COPY . .

EXPOSE 9000

CMD  [ "node", "index.js"]