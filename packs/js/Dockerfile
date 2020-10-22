# FROM nginx:stable-alpine
# COPY /dist /usr/share/nginx/html
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]

# FROM node:14.4-alpine AS build
# WORKDIR /app
# COPY .npmrc .
# COPY package.json .
# RUN npm install
# COPY . .
# RUN npm run build --configuration=production --source-map=false
# RUN apk add dos2unix
# RUN dos2unix ./entrypoint.sh


FROM nginx:1.19-alpine as service
RUN apk update && apk add jq && apk add dos2unix
COPY /nginx.conf /etc/nginx/conf.d/default.conf
COPY /dist /usr/share/nginx/html
COPY /entrypoint.sh /entrypoint.sh
RUN dos2unix ./entrypoint.sh && chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
# CMD ["nginx", "-g", "daemon off;"]
