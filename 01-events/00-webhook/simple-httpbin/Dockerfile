FROM node:21

WORKDIR /app

COPY package.json .
COPY package-lock.json .
COPY main.js .

RUN npm ci

ENV PORT=3000

EXPOSE ${PORT}

ENTRYPOINT node main
