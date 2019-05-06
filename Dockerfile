FROM docker:latest
MAINTAINER Dogstudio <developers@dogstudio.be>

RUN apk add --update bash git openssh-client rsync curl pkgconfig autoconf automake libtool nasm build-base zlib-dev
