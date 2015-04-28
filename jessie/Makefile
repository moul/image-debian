DOCKER_NAMESPACE =	armbuild/
NAME =			scw-distrib-debian
VERSION =		jessie
VERSION_ALIASES =	8.0 8 latest
TITLE =			Debian
DESCRIPTION =		Debian Jessie
SOURCE_URL =		https://github.com/scaleway/image-debian


## Image tools  (https://github.com/scaleway/image-tools)
all:    ../docker-rules.mk
../docker-rules.mk:
	$(MAKE) -C .. docker-rules.mk
-include ../docker-rules.mk
## Below you can add custom makefile commands and overrides
