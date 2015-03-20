FROM ubuntu:12.04

RUN (apt-get update &&\
  apt-get install -y build-essential git autoconf libtool libgtk2.0-dev libgl1-mesa-dev libgtkgl2.0-dev libglu1-mesa-dev)

RUN (git clone https://github.com/mcuelenaere/fsv.git &&\
  cd fsv &&\
  ./autogen.sh &&\
  ./configure &&\
  make &&\
  make install)

ENTRYPOINT ["/usr/local/bin/fsv"]
