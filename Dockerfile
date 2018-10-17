FROM google/cloud-sdk:216.0.0-slim
MAINTAINER amirhossein.hosseini@smarp.com
USER root

RUN apt-get update
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN apt-get install oracle-java8-installer
RUN apt-get install oracle-java8-set-default
