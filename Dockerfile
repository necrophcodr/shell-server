FROM mastersrp/funtoo:latest

RUN eix-sync && emerge -v nginx
ADD .
RUN git submodule init && git submodule update
