FROM node:21-bullseye

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY tsconfig.json ./
COPY src ./src
RUN npx tsc

RUN adduser newuser
RUN chown newuser -R /app
USER newuser

CMD node build/index.js