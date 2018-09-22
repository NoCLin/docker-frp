FROM alpine:3.7

LABEL maintainer="NoCLin"

ENV frp_version=0.21.0
ADD frp_*_linux_amd64.tar.gz /frp

WORKDIR /frp

RUN set -ex && \
    frp_basename=frp_${frp_version}_linux_amd64 && \
    mv ${frp_basename}/frp? /frp && \
    rm -rf ${frp_basename}* && \
    chmod +x /frp/frp?

VOLUME /frp/logs

ENTRYPOINT ["/frp/frps", "-c", "/frp/frps.ini"]
