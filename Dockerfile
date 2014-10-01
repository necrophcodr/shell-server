FROM mastersrp/funtoo:latest

RUN eix-sync && emerge -v nginx
ADD . /
RUN rm -rf /etc/skel/ && mkdir -p /etc/skel
RUN git submodule init && git submodule update
