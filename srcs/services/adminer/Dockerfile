FROM alpine:3.19

RUN apk add php82 php82-fpm php82-mysqli php82-session

COPY ./conf/www.conf /etc/php82/php-fpm.d
COPY ./conf/adminer-4.8.1-en.php /var/www/html/index.php

ENTRYPOINT ["php", "-S", "0.0.0.0:80", "-t", "/var/www/html"]