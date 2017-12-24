FROM ubuntu:latest
RUN mkdir -p /usr/src/app
COPY ./wik-devops-3tp/app.js /usr/src/app/
COPY ./wik-devops-3tp/package-lock.json /usr/src/app/
COPY ./wik-devops-3tp/package.json /usr/src/app/
COPY docker-entrypoint.sh /


WORKDIR /usr/src/app/
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN npm i

ENTRYPOINT ["/docker-entrypoint.sh"]