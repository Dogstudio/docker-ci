FROM docker:latest
MAINTAINER Dogstudio <developers@dogstudio.be>

RUN apk add --update bash git openssh-client rsync curl pkgconfig autoconf automake libtool nasm build-base zlib-dev
RUN mkdir -p /cache/apk && ln -s /cache/apk /etc/apk/cache
RUN which ssh-agent || ( apk add --update openssh )
RUN eval $(ssh-agent -s)
RUN cat /tmp/ssh/id_rsa | tr -d '\r' | ssh-add - > /dev/null && mkdir -p ~/.ssh
RUN '[[ -f /.dockerenv ]] && cp /tmp/ssh/config ~/.ssh/config'
RUN chmod 700 ~/.ssh
