FROM alpine:3.19

RUN apk add php82 php82-fpm php82-mysqli php82-redis php82-ctype

COPY ./conf/www.conf /etc/php82/php-fpm.d

ENTRYPOINT ["php-fpm82", "-F"]