FROM node:10.16.0

ENV APP_ENV development
COPY . .

RUN npm install

ENTRYPOINT npm run start:$APP_ENV