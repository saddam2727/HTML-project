FROM nginx
MAINTAINER ADDRESS "radha"
COPY ./index.html /usr/share/nginx/html
EXPOSE 80
