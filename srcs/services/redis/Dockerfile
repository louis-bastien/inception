FROM alpine:3.19

RUN apk add redis

EXPOSE 6379

COPY ./conf/redis.conf /etc/redis/redis.conf

ENTRYPOINT ["redis-server", "/etc/redis/redis.conf"]