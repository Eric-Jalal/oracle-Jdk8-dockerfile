FROM google/cloud-sdk:216.0.0-slim
MAINTAINER Amir J.Hosseini <amirhossein.hosseini@smarp.com>
USER root

RUN apt-get update
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN apt-get install oracle-java8-installer -y --allow-unauthenticated
RUN apt-get install oracle-java8-set-default -y --allow-unauthenticated
