FROM centos:7

MAINTAINER Lukasz Gasior <lukas.gasior@gmail.com>

RUN yum install -y wget tar

RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u40-b26/jdk-8u40-linux-x64.tar.gz
RUN mkdir /usr/java
RUN tar xf jdk-8u40-linux-x64.tar.gz -C /usr/java

RUN yum remove -y wget tar

CMD ["/bin/true"]

