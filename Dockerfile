# This dir contains a Node.js app, you need to get it running in a container
# No modifications to the app should be necessary, only edit this Dockerfile
# once Dockerfile builds correctly, start container locally to make sure it works on http://localhost


FROM node:6-alpine

# expose port 3000 on the docker container (app listens on 3000). Host needs to be mapped (80 --> 3000).
EXPOSE 3000

RUN apk add --update tini

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json package.json

# install all dependenceis and clean cache
RUN npm install && npm cache clean --force

# Copy applicate code from current directory to current working dorectory inside the docker container
COPY . .

# Start Node
CMD ["/sbin/tini", "--", "node", "./bin/www"]
