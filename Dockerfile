FROM debian:stable-slim

LABEL maintainer = "Michael Schmidt <schmidt.software@gmail.com>"
LABEL org.opencontainers.image.source = "https://github.com/schmidt-software/zerotier-root"

RUN apt-get update && \
    apt-get install -y curl && \
    curl -s https://install.zerotier.com/ | bash

ENTRYPOINT ["/usr/sbin/zerotier-one"]