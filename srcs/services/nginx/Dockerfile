FROM alpine:3.19

RUN apk add nginx

EXPOSE 80

COPY ./conf/nginx.conf /etc/nginx
COPY ./conf/default.conf /etc/nginx/http.d/

CMD ["nginx", "-g", "daemon off;"]