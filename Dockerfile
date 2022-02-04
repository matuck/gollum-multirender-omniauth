
FROM ubuntu:latest
ARG BUILD_DATE
ARG VCS_REF
LABEL  \
       org.opencontainers.image.created="${BUILD_DATE}" \
       org.opencontainers.image.authors="matuck@matuck.com" \
       org.opencontainers.image.vendor="matuck" \
       org.opencontainers.image.title="gollum-multirender-omniauth"

ENV LC_ALL=C.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

ADD builder.sh /tmp/builder.sh
RUN /bin/bash /tmp/builder.sh && rm -f /tmp/builder.sh

ADD entrypoint.sh /entrypoint.sh

EXPOSE 4567
CMD ["/bin/bash", "/entrypoint.sh"]
