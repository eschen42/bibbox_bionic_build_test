FROM ubuntu:18.04
MAINTAINER Arthur C. Eschenlauer, esch0041@umn.edu
RUN apt-get -y update
RUN apt-get -y upgrade
RUN (echo 8; echo 1) | apt-get -y install tzdata
RUN apt-get -y install tzdata
RUN apt-get -y install git vim-nox wget
RUN apt-get -y install unzip
ENV DEBIAN_FRONTEND=noninteractive LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
RUN apt-get install --no-install-recommends -y locales && locale-gen en_US.UTF-8 && dpkg-reconfigure locales
RUN apt-get -y install sudo gnupg systemd
RUN (echo 127.0.2.1 puppet) >> /etc/hosts
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/sbin/init"]
RUN apt-get -y install iproute2 iputils-ping
RUN apt-get -y install lsb-release
RUN apt-get -y install apache2
ADD Dockerfile /Dockerfile

