# VERSION 1.0

FROM debian:jessie

# common
RUN \
  apt-get update && \
  apt-get install -y git build-essential python libnet-ssleay-perl libxml2 libxml2-dev libxslt1-dev zlib1g-dev libssl-dev skipfish wget curl

# nikto
RUN \
  cd / && \
  git clone https://github.com/sullo/nikto/ && \
  mv /nikto /opt/ && \
  ln -s /opt/nikto/program/nikto.pl /usr/local/bin/

# wpscan
RUN \
  cd / && \
  git clone https://github.com/wpscanteam/wpscan && \
  mv /wpscan /opt/ && \
  ln -s /opt/wpscan/wpscan.rb /usr/local/bin/ && \
  mkdir /opt/ruby/ && \
  cd /opt/ruby && \
  wget https://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.6.tar.gz && \
  tar xvf ruby-2.2.6.tar.gz && \
  cd ruby-2.2.6 && \
  ./configure && \
  make && \
  make install && \
  gem install bundler && \
  gem install typhoeus && \
  gem install yajl && \
  gem install yajl-ruby && \
  gem install nokogiri && \
  gem install terminal-table && \
  gem install ruby-progressbar && \
  gem install addressable
  

# ruby
RUN \
  cd / && \
  mkdir 

# cleanup
RUN \
  apt-get purge -y git build-essential && \
  apt-get -y autoremove --purge && \
  rm -rf /var/lib/apt/lists/

# environment
COPY include/* /usr/local/bin/
#RUN \
#  export uid=1000 gid=1000 && \
#  groupadd --gid ${gid} user && \
#  useradd --uid ${uid} --gid ${gid} --create-home user
#USER user
#WORKDIR /home/user

#ENTRYPOINT ["/usr/bin/sslscan"]
