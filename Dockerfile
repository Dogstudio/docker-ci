FROM node:boron-alpine
MAINTAINER Dogstudio <developers@dogstudio.be>

#Curl
RUN apk add --update --no-cache python 
RUN apk add --update curl && rm -rf /tmp/* /var/cache/apk/*

#Npm
#RUN apk add --update nodejs nodejs-npm && npm install npm@latest -g

#Gulp
RUN npm install gulp-cli -g

#PHP
RUN apk add --update wget curl  php php-curl php-openssl php-json php-phar php-dom && rm /var/cache/apk/*

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
RUN chmod +x /usr/bin/composer
