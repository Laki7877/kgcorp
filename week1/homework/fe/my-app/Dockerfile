FROM node:10.16.0 AS build-env
ARG APP_ENV=production
WORKDIR /tmp
COPY . .
RUN npm install \
    && npm run build:$APP_ENV

FROM nginx:latest
EXPOSE 80
COPY --from=build-env /tmp/build /usr/share/nginx/html



