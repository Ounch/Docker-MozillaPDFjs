FROM node:18
RUN apt-get update
RUN apt-get -y install build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev
RUN npm install -g gulp-cli
RUN mkdir -p /home/node/app 
WORKDIR /home/node/app

EXPOSE 8888
