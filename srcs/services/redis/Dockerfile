FROM alpine:3.19

RUN apk add redis

COPY ./conf/redis.conf /etc/redis/redis.conf

ENTRYPOINT ["redis-server", "/etc/redis/redis.conf"]