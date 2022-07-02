FROM nginx:1.23-alpine

RUN rm /etc/nginx/conf.d/*

COPY ./nginx/nginx.conf /etc/nginx/conf.d/

WORKDIR /www

COPY ./plany /www/plany/
COPY lista.html /www/

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]