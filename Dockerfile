FROM fedora

RUN dnf install -y wget

RUN wget -O hugo.tar https://github.com/gohugoio/hugo/releases/download/v0.54.0/hugo_0.54.0_Linux-64bit.tar.gz

RUN tar -xvf hugo.tar

RUN mv hugo /usr/local/bin/

WORKDIR /data
