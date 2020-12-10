FROM nginx:1.19-alpine as service
RUN apk update && apk add jq && apk add dos2unix
COPY /nginx.conf /etc/nginx/conf.d/default.conf
COPY /dist /usr/share/nginx/html
COPY /entrypoint.sh /entrypoint.sh
RUN dos2unix ./entrypoint.sh && chmod +x /entrypoint.sh

ENV PORT 80
EXPOSE 80

ENTRYPOINT [ "/entrypoint.sh" ]
# CMD ["nginx", "-g", "daemon off;"]
