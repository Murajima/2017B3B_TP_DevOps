FROM ubuntu:latest
RUN mkdir -p /usr/src/app
COPY ./wik-devops-3tp/app.js /usr/src/app/
COPY ./wik-devops-3tp/package-lock.json /usr/src/app/
COPY ./wik-devops-3tp/package.json /usr/src/app/

WORKDIR /usr/src/app/
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN npm i
RUN NODE_ENV=development MONGO_HOST=localhost MONGO_USER=root MONGO_DATABASE=test MONGO_PASSWORD=123456 node app.js