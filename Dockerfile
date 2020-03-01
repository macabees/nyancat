FROM debian

RUN apt-get -y update \ 
    && apt-get -y install \
        nyancat \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV TERM=xterm-256color

CMD ["nyancat"]
