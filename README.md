Official Debian images on Online Labs
====================================

Scripts to build the official Debian images on Online Labs

These images are built using [Image Tools](https://github.com/online-labs/image-tools) and depends on the [armhf port of debian docker images](https://registry.hub.docker.com/u/armbuild/debian/) and scripts from [ocs-scripts](https://github.com/online-labs/ocs-scripts).

---

**This image is meant to be used on a C1 server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.**

[More info](https://github.com/online-labs/image-tools#docker-based-builder)

Available tags
--------------

- wheezy (7.7, 7, latest)

---

Commands
--------

    # build the image in a rootfs directory
    $ make rootfs

    # push the image on s3
    $ make publish_on_s3.tar

    # write the image to /dev/nbd1
    $ make install_on_disk

Full list of commands available at: https://github.com/online-labs/image-tools/tree/master#commands

Links
-----

- [Community: Official Debian Image](https://community.cloud.online.net/t/official-debian-image/344/11?u=manfred)
- [Community: New Linux Distributions on C1](https://community.cloud.online.net/t/official-new-linux-distributions-ubuntu-coreos-centos-fedora-arch-linux/229?u=manfred)
