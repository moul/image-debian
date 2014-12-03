DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-distrib-debian
VERSION =		wheezy
VERSION_ALIASES =	7.7 7
IS_LATEST =		1
TITLE =			Debian
DESCRIPTION =		Debian Wheezy (7.7)
SOURCE_URL =		https://github.com/online-labs/image-debian


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget https://raw.githubusercontent.com/online-labs/image-tools/master/docker-rules.mk
-include docker-rules.mk


## Here you can add custom commands and overrides
