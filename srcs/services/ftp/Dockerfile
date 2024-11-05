FROM alpine:3.19

ARG FTP_USER
ARG FTP_PASS

RUN apk add vsftpd

RUN adduser -D -h /home/ftp ${FTP_USER} && echo ${FTP_USER}:${FTP_PASS} | chpasswd
RUN mkdir -p /home/ftp && chown ${FTP_USER}:${FTP_USER} /home/ftp && chmod 755 /home/ftp

COPY ./conf/vsftpd.conf /etc/vsftpd

EXPOSE 21

ENTRYPOINT ["vsftpd", "/etc/vsftpd/vsftpd.conf"]