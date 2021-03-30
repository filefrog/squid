FROM alpine:3

ARG BUILD_DATE
ARG VCS_REF
LABEL maintainer="James Hunt <images@huntprod.com>" \
      summary="Squid Caching Proxy" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/filefrog/squid.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0"

ENTRYPOINT ["/usr/bin/entrypoint.sh"]

RUN apk add squid
COPY entrypoint.sh /usr/bin/entrypoint.sh
