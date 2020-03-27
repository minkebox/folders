FROM alpine:latest

RUN apk --no-cache add php7 php7-json php7-fileinfo php7-zip php7-bz2 php7-posix php7-zlib php7-phar

COPY root/ /

VOLUME /folders

ENTRYPOINT ["/startup.sh"]
