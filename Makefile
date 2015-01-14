VERSIONS ?=	wheezy

all:	build

build release re run publish_on_s3 publish_on_s3.tar publish_on_s3.sqsh shell travis:
	for version in $(VERSIONS); do \
	    $(MAKE) -C $$version $@; \
	done
