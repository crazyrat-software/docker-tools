# VERSION 1.0

FROM debian:jessie

# common
RUN \
  apt-get update && \
  apt-get install -y git build-essential python

# sqlmap
RUN \
  cd / && \
  git clone https://github.com/sqlmapproject/sqlmap.git && \
  mv /sqlmap /opt/ && \
  ln -s /opt/sqlmap/sqlmap.py /usr/local/bin/

# cleanup
RUN \
  apt-get purge -y git build-essential && \
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
