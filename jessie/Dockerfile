## -*- docker-image-name: "armbuild/scw-distrib-debian:jessie" -*-
FROM armbuild/debian:jessie
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)

 	    	    
# Environment
ENV DEBIAN_FRONTEND noninteractive
# Useful for image inheritance
ENV SCW_BASE_IMAGE armbuild/scw-debian:jessie


# Patch rootfs for docker-based builds
RUN apt-get -y -q update \
 && apt-get -y -qq install bash curl lsb-release tar \
 && apt-get -y clean \
 && curl -Lq http://j.mp/scw-skeleton | FLAVORS=common,docker-based,systemd bash -e \
 && /usr/local/sbin/builder-enter


# Install packages
ADD ./patches/etc/apt/sources.list /etc/apt/sources.list
RUN apt-get -q update && \
    apt-get -y -qq upgrade && \
    apt-get install -y -qq \
	bash-completion \
	bc \
	bootlogd \
	ca-certificates \
	cron \
	curl \
	dbus \
	dstat \
	ethstatus \
	file \
	fio \
	htop \
	ioping \
	iotop \
	iperf \
	iptables \
	iputils-ping \
	isc-dhcp-client \
	less \
	libnss-myhostname \
	locales \
	locate \
	lsb-release \
	lsof \
	make \
	man-db \
	mg \
	mosh \
	nano \
	net-tools \
	netcat \
	ntp \
	ntpdate \
	python-apt \
	python-yaml \
	rsync \
	rsyslog \
	screen \
	shunit2 \
	socat \
	ssh \
	sudo \
	sysstat \
	tcpdump \
	tmux \
	vim \
	wget \
	whiptail \
    && apt-get clean


# Configure locales
RUN locale-gen

# default target
RUN systemctl set-default multi-user

# Configure Systemd
RUN systemctl enable oc-fetch-ssh-keys \
 && systemctl enable oc-sync-kernel-modules \
 && systemctl enable oc-generate-ssh-keys \
 && systemctl enable oc-add-extra-volumes \
 && systemctl mask systemd-modules-load.service \
 && systemctl mask dev-ttyS0.device \
 && systemctl mask systemd-update-utmp-runlevel \
 && systemctl mask proc-sys-fs-binfmt_misc.automount


RUN rm -f /sbin/init && cp /lib/systemd/systemd /sbin/init


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
