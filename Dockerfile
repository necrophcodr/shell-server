FROM mastersrp/funtoo:latest

RUN eix-sync && emerge -v nginx
RUN rm -rf /etc/skel/ && mkdir -p /etc/skel
ADD . /
RUN git submodule init && git submodule update
