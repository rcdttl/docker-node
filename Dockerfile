FROM node

MAINTAINER KH BYUN "novemberde.github.io"

RUN npm install -g pm2 node-gyp

ENV NODE_ENV production

EXPOSE 3000

COPY ./ /docker_node_server

RUN npm install --prefix /docker_node_server

CMD ["pm2-docker", "app.js"]
