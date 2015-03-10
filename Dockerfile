FROM ubuntu:14.04
MAINTAINER Benjamin Boit <b.boit@posteo.de>

RUN apt-get update && apt-get install -y \
  php5-fpm \
  php5-curl \
  php5-gd \
  php5-imagick \
  php5-intl \
  php5-mcrypt \
  php5-memcached \
  php5-mysql \
  php5-xdebug \
  php5-xsl

RUN sed -e 's/;daemonize = yes/daemonize = no/' -i /etc/php5/fpm/php-fpm.conf && \
    sed -e 's/;listen\.owner/listen.owner/' -i /etc/php5/fpm/pool.d/www.conf && \
    sed -e 's/;listen\.group/listen.group/' -i /etc/php5/fpm/pool.d/www.conf
    
EXPOSE 9000

CMD ["/usr/sbin/php5-fpm"]
