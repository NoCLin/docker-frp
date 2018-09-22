FROM alpine:3.7

LABEL maintainer="NoCLin"

ENV frp_version=0.21.0

WORKDIR /frp

RUN set -ex && \
    frp_basename=frp_${frp_version}_linux_amd64 && \
    wget https://github.com/fatedier/frp/releases/download/v${frp_version}/${frp_basename}.tar.gz && \
    tar -xzf ${frp_basename}.tar.gz && \
    mv ${frp_basename}/frp? /frp && \
    rm -rf ${frp_basename}* && \
    chmod +x /frp/frp?

VOLUME /frp/logs

ENTRYPOINT ["/frp/frps", "-c", "/frp/frps.ini"]
