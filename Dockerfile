FROM node:lts-slim AS build 
WORKDIR /app
COPY package*.json ./
RUN npm i
