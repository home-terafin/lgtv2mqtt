FROM node:14-alpine

RUN mkdir -p /usr/node_app/lgkey
COPY . /usr/node_app
WORKDIR /usr/node_app
RUN apk add --no-cache git
RUN npm install --production

CMD ["npm", "start"]
