#FROM node:16
#docker build --network host -f Dockerfile -t t1:latest . 
FROM registry.access.redhat.com/ubi8/nodejs-16-minimal:1-89
# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]