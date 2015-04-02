DOCKER_NAMESPACE =	armbuild/
NAME =			scw-distrib-debian
VERSION =		wheezy
VERSION_ALIASES =	7.8 7 latest
TITLE =			Debian
DESCRIPTION =		Debian Wheezy
SOURCE_URL =		https://github.com/scaleway/image-debian


## Image tools  (https://github.com/scaleway/image-tools)
all:    ../docker-rules.mk
../docker-rules.mk:
	$(MAKE) -C .. docker-rules.mk
-include ../docker-rules.mk
## Below you can add custom makefile commands and overrides
