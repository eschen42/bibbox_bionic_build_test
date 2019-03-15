FROM ubuntu:18.04
MAINTAINER Arthur C. Eschenlauer, esch0041@umn.edu
RUN apt-get -y update
RUN apt-get -y upgrade
# set timezone to UTC Amsterdam
RUN (echo 8; echo 1) | apt-get -y install tzdata
# install git, vim without X support, and wget, unzip
RUN apt-get -y install git
RUN apt-get -y install vim-nox
RUN apt-get -y install wget
RUN apt-get -y install unzip
# set locale to eu_US.UTF-8 as needed for bibbox installation
ENV DEBIAN_FRONTEND=noninteractive LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
RUN apt-get install --no-install-recommends -y locales && locale-gen en_US.UTF-8 && dpkg-reconfigure locales
# install sudo, gnupg
RUN apt-get -y install sudo
RUN apt-get -y install gnupg
# install systemd to support testing of systemctl-dependent installation tools
RUN apt-get -y install systemd
RUN (echo 127.0.2.1 puppet) >> /etc/hosts
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/sbin/init"]
# install ss and ip
RUN apt-get -y install iproute2
# install ping
RUN apt-get -y install iputils-ping
# install lsb_release
RUN apt-get -y install lsb-release
# install apache2
RUN apt-get -y install apache2
# speed up bibbox-install/install-pyhthon-and-tools.sh
RUN apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 7F438280EF8D349F
RUN apt-get update
RUN apt-get install -y inotify-tools
RUN apt-get install -y python3-pip
# speed up bibbox-install/bootstrap-puppet-agent.sh
RUN apt-get install -y puppetmaster
## preserve this file for future reference
ADD Dockerfile /Dockerfile

