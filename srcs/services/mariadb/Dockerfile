FROM alpine:3.19

RUN apk add mariadb mariadb-client
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql


COPY    ./tools/init.sh /etc
COPY    ./conf/mariadb-server.cnf /etc/my.cnf.d

RUN chmod +x /etc/init.sh

ENTRYPOINT ["/bin/sh", "/etc/init.sh"]

# ENTRYPOINT ["tail", "-f", "/dev/null"]