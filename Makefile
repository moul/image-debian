FUNCTIONS =	build release re run build publish_on_s3 publish_on_s3.tar publish_on_s3.sqsh shell
VERSIONS ?=	wheezy


all: build


$(FUNCTIONS):
	for version in $(VERSIONS); do \
	    $(MAKE) -C $$version $@; \
	done
