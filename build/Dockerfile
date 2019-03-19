FROM ubuntu:16.04
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
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install --no-install-recommends -y locales && locale-gen && dpkg-reconfigure locales
RUN echo 'LANG="en_US.UTF-8"'>/etc/profile.d/locale_en_US
RUN echo 'LANGUAGE="en_US:en"'>>/etc/profile.d/locale_en_US
RUN echo 'export LC_ALL=en_US.UTF-8'>>/etc/profile.d/locale_en_US
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
RUN apt-get -y update
RUN apt-get install -y inotify-tools
RUN apt-get install -y python3-pip
# ensure en_US.UTF-8 locale
RUN grep '^en_US.UTF-8 UTF-8' /etc/locale.gen || (echo 'en_US.UTF-8 UTF-8'>>/etc/locale.gen && locale-gen)
ENV LC_ALL="en_US.UTF-8" LANG="en_US.UTF-8" LANGUAGE="en_US:en"
# ensure we are up-to-date - probably unnecessary
RUN apt-get -y upgrade
## preserve this file for future reference
ADD Dockerfile /Dockerfile

