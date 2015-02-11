VERSIONS ?=	wheezy


all:	build


# Proxyfied Makefile commands
.PHONY: build release install install_on_disk publish_on_s3 clean shell re all run
.PHONY: publish_on_s3.tar publish_on_s3.sqsh publish_on_s3.tar.gz travis
build release install install_on_disk publish_on_s3 clean shell re all run publish_on_s3.tar publish_on_s3.sqsh publish_on_s3.tar.gz travis:
	for version in $(VERSIONS); do \
	    $(MAKE) -C $$version $@; \
	done


docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
