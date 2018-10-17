FROM 
MAINTAINER amirhossein.hosseini@smarp.com
USER root

RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN apt-get install oracle-java8-installer
RUN apt-get install oracle-java8-set-default
