FROM node:21-bullseye AS build
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY tsconfig.json ./
COPY src ./src
RUN npx tsc

FROM node:21-bullseye
WORKDIR /app

RUN adduser newuser
RUN chown newuser -R /app
USER newuser

COPY --from=build /app/build ./build

CMD node build/index.js