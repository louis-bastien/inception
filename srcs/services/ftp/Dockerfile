FROM alpine:3.19

RUN apk add vsftpd

RUN adduser -D -h /home/ftp ftpuser && echo "ftpuser:ftppass42" | chpasswd
RUN mkdir -p /home/ftp && chown ftpuser:ftpuser /home/ftp && chmod 755 /home/ftp

COPY ./conf/vsftpd.conf /etc/vsftpd

EXPOSE 21

ENTRYPOINT ["vsftpd", "/etc/vsftpd/vsftpd.conf"]