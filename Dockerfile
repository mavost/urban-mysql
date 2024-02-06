FROM alpine:latest
LABEL Author="Mavost <mavost@mavost.ml>"

WORKDIR /app
VOLUME /app

RUN apk add --update mysql mysql-client && rm -f /var/cache/apk/*

# These lines moved to the end allow us to rebuild image quickly after only these files were modified.
COPY config/startup.sh /startup.sh
COPY config/my.cnf /etc/mysql/my.cnf

EXPOSE 3306
CMD ["/startup.sh"]