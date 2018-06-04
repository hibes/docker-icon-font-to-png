FROM alpine:latest

RUN apk add \
  --nocache \
  --update \
  python2 \
  bash \
  freetype-dev \
  jpeg \
  zlib

RUN apk add \
  --nocache \
  --update \
  --virtual .build_dependencies \
  gcc \
  jpeg-dev \
  libffi-dev \
  libgcc \
  libxml2-dev \
  libxslt-dev \
  musl-dev \
  python2-dev \
  py-pip \
  zlib-dev && \
  pip install icon_font_to_png && \
  apk del .build_dependencies && \
  rm -rf /root/.cache && \
  rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

WORKDIR /root

CMD "/entrypoint.sh"
