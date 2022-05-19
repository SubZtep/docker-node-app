FROM alpine:latest
RUN apk add --update nodejs-current npm
RUN addgroup -S node && adduser -S node -G node
USER node
RUN mkdir /home/node/code
WORKDIR /home/node/code
COPY --chown=node:node package*.json ./
RUN npm ci
COPY --chown=node:node . .
EXPOSE 8080
CMD [ "node", "server.js" ]
