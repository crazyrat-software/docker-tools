# VERSION 1.0

FROM debian:jessie

# common
RUN \
  apt-get update && \
  apt-get install -y git build-essential zlib1g-dev dnsutils bsdmainutils python python-dev python-pip

# sslyze
RUN \
   pip install sslyze

# sslscan
RUN \
  cd / && \
  git clone https://github.com/rbsec/sslscan.git && \
  cd sslscan && \
  make static && \
  make install && \
  rm -rf /sslscan

# testssl.sh
RUN \
  cd / && \
  git clone https://github.com/drwetter/testssl.sh.git && \
  mv /testssl.sh /opt/

# cleanup
RUN \
  apt-get purge -y git build-essential zlib1g-dev && \
  apt-get -y autoremove --purge && \
  rm -rf /var/lib/apt/lists/

# environment
COPY include/* /usr/local/bin/
RUN \
  export uid=1000 gid=1000 && \
  groupadd --gid ${gid} user && \
  useradd --uid ${uid} --gid ${gid} --create-home user
USER user
WORKDIR /home/user

#ENTRYPOINT ["/usr/bin/sslscan"]