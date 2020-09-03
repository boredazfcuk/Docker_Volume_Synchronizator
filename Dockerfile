# Testing
FROM alpine:3.12
MAINTAINER boredazfcuk

RUN apk add --update --no-cache csync2 lsyncd procps docker

COPY src/* /usr/local/bin/

VOLUME ["/etc", "/var/lib/csync2"]

CMD /usr/local/bin/wrapper.sh
