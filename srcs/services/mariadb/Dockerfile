FROM alpine:3.19

RUN apk add --no-cache mariadb mariadb-client

RUN mkdir -p /var/lib/mysql /run/mysqld && \
    chown -R mysql:mysql /var/lib/mysql /run/mysqld

RUN mariadb-install-db --user=mysql --datadir=/var/lib/mysql

USER mysql

CMD ["mariadbd", "--user=mysql", "--datadir=/var/lib/mysql", "--console"]
