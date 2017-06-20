FROM centos:7

MAINTAINER Evan Zeimet <podnov@gmail.com>
RUN yum install -y traceroute \
        curl \
        dnsutils \
        jq \
        nmap \ 
        net-tools \
        telnet \
    && yum clean all

COPY Dockerfile /Dockerfile
LABEL org.label-schema.docker.dockerfile="/network-utils/Dockerfile" \
      org.label-schema.vcs-type="Git" \
      org.label-schema.vcs-url="https://github.com/podnov/com.docker.hub"
