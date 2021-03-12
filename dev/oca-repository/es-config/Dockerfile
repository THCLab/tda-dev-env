FROM ubuntu

RUN apt-get update && \
  apt-get install -y wget && \
  rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
  apt-get install -y curl

COPY mappings /mappings
COPY init-mappings.sh /

ENTRYPOINT ["/init-mappings.sh"]
RUN ["chmod", "+x", "/init-mappings.sh"]
