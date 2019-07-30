FROM alpine

LABEL maintainer Alexey Bychkov <joxertm@yandex.ru>

RUN apk --update add git less openssh bash && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

VOLUME /git
WORKDIR /git

ENTRYPOINT ["/bin/bash"]
