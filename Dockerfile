FROM google/cloud-sdk:216.0.0-slim
MAINTAINER Amir J.Hosseini <amirhossein.hosseini@smarp.com>
USER root

RUN apt-get update
RUN apt-get install -y software-properties-common debconf-utils
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
RUN apt-get install oracle-java8-installer -y --allow-unauthenticated
RUN apt-get install oracle-java8-set-default -y --allow-unauthenticated
