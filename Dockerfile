FROM alpine:latest

COPY root/ /

VOLUME /folders

ENTRYPOINT ["/startup.sh"]
