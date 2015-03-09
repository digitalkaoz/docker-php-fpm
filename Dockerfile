FROM ubuntu:14.04
MAINTAINER Benjamin Boit <b.boit@posteo.de>

RUN apt-get update && apt-get install -y php5-fpm php5-curl php5-gd php5-imagick php5-intl php5-mcrypt php5-memcached php5-mysql php5-xdebug php5-xsl

EXPOSE 9000

CMD ["/usr/sbin/php5-fpm"]