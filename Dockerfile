FROM library/alpine:2.7
MAINTAINER victor.biga@gmail.com
RUN apk --update add nginx php-fpm
RUN mkdir -p /tmp/nginx /etc/php && echo "clear_env = no" >> /etc/php/php-fpm.conf
ADD www /www
ADD nginx.conf /etc/nginx/
EXPOSE 80
CMD php-fpm -d variables_order="EGPCS" && exec nginx -g "daemon off;"
