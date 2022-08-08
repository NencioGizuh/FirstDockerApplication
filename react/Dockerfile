# base image
FROM node:12.2.0-alpine as build
# set working directory
WORKDIR /app
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
# install and cache app dependencies
COPY . /app
RUN npm install
RUN npm install react-scripts@3.0.1 -g
RUN npm run build

FROM nginx:alpine
RUN apk add --no-cache bash

WORKDIR /usr/share/nginx/html
COPY env.sh .
COPY .env .
RUN chmod +x env.sh

COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["/bin/bash", "-c", "/usr/share/nginx/html/env.sh && nginx -g \"daemon off;\""]