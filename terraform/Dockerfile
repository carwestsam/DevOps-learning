FROM ubuntu
RUN apt-get update
RUN apt-get install -y ca-certificates
WORKDIR /data
COPY terraform /usr/bin/
WORKDIR /data/workspace
ENV access_key
ENV secret_key
CMD /bin/bash
