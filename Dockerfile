FROM alpine:3.12

RUN apk add --no-cache mariadb mariadb-client mariadb-server-utils && \
    rm -f /var/cache/apk/*

ADD files/run.sh /scripts/run.sh
RUN chmod -R 755 /scripts

EXPOSE 3306

VOLUME ["/var/lib/mysql"]

ENTRYPOINT ["/scripts/run.sh"]
