FROM alpine:3.19

RUN apk add php82 php82-fpm mysql

COPY ./conf/www.conf /etc/php82/php-fpm.d

ENTRYPOINT ["php-fpm82", "-F"]