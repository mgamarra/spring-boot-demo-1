
#FROM registry.brb.com.br:5000/brb/imagens_base/nodejs-18-minimal:latest
FROM node:latest

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3000

ENTRYPOINT ["node", "./bin/server.js"]