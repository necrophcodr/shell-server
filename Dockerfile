FROM mastersrp/funtoo:latest
MAINTAINER necrophcodr <necrophcodr@protonmail.ch>

WORKDIR /
RUN eix-sync && emerge -v nginx
RUN rm -rf /etc/skel/ && mkdir -p /etc/skel && \
rm -rf /etc/nginx/ && mkdir -p /etc/nginx && \
mkdir -p /var/www && \
useradd -d /var/www -s /bin/false www-data
ADD . /
RUN /root/scripts/clone.sh
RUN python /var/www/html/new.hashbang.sh/setup.py install

