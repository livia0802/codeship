FROM node:7.7.2-alpine

COPY output /root/service
WORKDIR /root/service/bin


RUN apk update && apk add postgresql

COPY package.json .
RUN npm install --quiet

COPY . .
