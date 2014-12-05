DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-distrib-debian
VERSION =		wheezy
VERSION_ALIASES =	7.7 7 latest
TITLE =			Debian
DESCRIPTION =		Debian Wheezy (7.7)
SOURCE_URL =		https://github.com/online-labs/image-debian


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
