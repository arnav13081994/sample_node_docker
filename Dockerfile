# This dir contains a Node.js app, you need to get it running in a container
# No modifications to the app should be necessary, only edit this Dockerfile
# once Dockerfile builds correctly, start container locally to make sure it works on http://localhost


FROM node:6-alpine

EXPOSE 3000

RUN apk add --update tini

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json package.json


RUN npm install && npm cache clean --force


COPY . .

# - then it needs to start container with command '/sbin/tini -- node ./bin/www'
CMD ["/sbin/tini", "--", "node", "./bin/www"]
