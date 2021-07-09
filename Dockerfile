FROM node:16-alpine

COPY ./web-brogue /web-brogue/

WORKDIR /web-brogue/server
RUN apk add --no-cache python3 make g++ libc6-compat
RUN npm install
RUN echo 'config.db.url = "mongodb://mongo/brogue"' >> /web-brogue/server/config.js

EXPOSE 8080

CMD ["npm", "start"]

