FROM alpine:3.19

RUN apk add mariadb mariadb-client
RUN mysql_install_db --user=mysql

COPY ./conf/init.sh /etc
RUN chmod +x /etc/init.sh

ENTRYPOINT ["/bin/sh", "/etc/init.sh"]