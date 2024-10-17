FROM alpine:3.19

RUN apk add nginx

EXPOSE 443

COPY ./conf/nginx.conf /etc/nginx
COPY ./conf/default.conf /etc/nginx/http.d/

ENTRYPOINT ["nginx", "-g", "daemon off;"]