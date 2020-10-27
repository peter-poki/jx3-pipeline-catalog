#!/bin/sh

APP_ENVS=$(jq -n -r env | grep "APP_\|{\|}" | tr -d '\n')

sed -i "s#window.env = {}#window.env = $APP_ENVS#g" /usr/share/nginx/html/index.html

nginx -g "daemon off;"
