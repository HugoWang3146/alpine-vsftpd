FROM alpine:3.10

LABEL keyword="ftp"

LABEL version="1.0"

RUN apk update && apk add vsftpd dos2unix

RUN adduser -h /home/uftp -s /bin/sh -D uftp

COPY entrypoint.sh vsftpd.custom.conf /

RUN dos2unix /entrypoint.sh

RUN dos2unix /vsftpd.custom.conf

VOLUME /home/uftp

EXPOSE 20 21

ENTRYPOINT ["sh", "/entrypoint.sh"]
