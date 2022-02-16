# ![PSI Logo](images/icon-64-net.png) Computer Networks Lab Base Docker Image

## Introduction

This Docker image is supposed to be used as a base for demos and examples available in the [Computer Networks Lab Demo Projects repo "kiv-psi"](https://github.com/maxotta/kiv-psi) and your own projects.

## Image description

The image is based on the [official Ubuntu Docker image](https://hub.docker.com/_/ubuntu) `ubuntu:focal`.
It adds the following packages:
* `mc` - [The Midnight Commander](https://en.wikipedia.org/wiki/Midnight_Commander)
* `net-tools` - provides utilities like [`arp`](http://manpages.ubuntu.com/manpages/focal/en/man8/arp.8.html), [`rarp`](http://manpages.ubuntu.com/manpages/focal/en/man8/rarp.8.html), [`ifconfig`](http://manpages.ubuntu.com/manpages/focal/en/man8/ifconfig.8.html), [`netstat`](http://manpages.ubuntu.com/manpages/focal/en/man8/netstat.8.html) and [`route`](http://manpages.ubuntu.com/manpages/focal/en/man8/route.8.html).
* `iproute2` - provides the [`ip-route`](http://manpages.ubuntu.com/manpages/focal/en/man8/ip-route.8.html) utility.
* `iputils-ping` - provides utilities [`ping`](http://manpages.ubuntu.com/manpages/focal/en/man8/ping.8.html), [`ping4`](http://manpages.ubuntu.com/manpages/focal/en/man8/ping4.8.html) and [`ping6`](http://manpages.ubuntu.com/manpages/focal/en/man8/ping6.8.html).
* `traceroute` - provides the [`traceroute`](http://manpages.ubuntu.com/manpages/focal/en/man1/traceroute.db.1.html) utility.
* `dnsutils` - provides [`dig`](http://manpages.ubuntu.com/manpages/focal/en/man1/dig.1.html) and [`nslookup`](http://manpages.ubuntu.com/manpages/focal/en/man1/nslookup.1.html) [DNS](https://en.wikipedia.org/wiki/Domain_Name_System) utilities.
* `ipcalc` - provides the [`ipcalc`](http://manpages.ubuntu.com/manpages/focal/en/man1/ipcalc.1.html) utility for calculating broadcast and network masks, host ranges and design subnets. See also [`ipcalc` website](http://jodies.de/ipcalc).
* `vim` - provides the [`vim`](http://manpages.ubuntu.com/manpages/focal/en/man1/vim.1.html) - [Vi IMproved editor](https://en.wikipedia.org/wiki/Vim_(text_editor)).

## Using the image

If you want to use this image, just pull it with
```
docker pull ghcr.io/maxotta/kiv-psi-base-docker:latest
```

## Building images based on this base

Just use the `FROM <image>` clause to build a new image based on this image. If you want, form example, create a new image that adds Python 3 to the container, do it as follows:

```
FROM ghcr.io/maxotta/kiv-psi-base-docker:latest

RUN yum -q -y install python3
```

## Creating a GNS3 appliance based on this image

In order to add a new host appliance based on this image, import the [psi-base-node.gns3a](psi-base-node.gns3a) appliance descriptor file into GNS3.