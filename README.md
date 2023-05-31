# ![PSI Logo](images/icon-64-net.png) Computer Networks Lab Base Docker Image
[![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]

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
* `nmap` - provides the [`nmap`](http://manpages.ubuntu.com/manpages/focal/en/man1/nmap.1.html) network exploration tool and security / port scanner.
* `tcpdump` - provides the [`tcpdump`](http://manpages.ubuntu.com/manpages/focal/en/man8/tcpdump.8.html) utility for network traffic analysis.
* `curl` - provides the [`curl`](http://manpages.ubuntu.com/manpages/focal/en/man1/curl.1.html) tools for transferring data from or to a server.
* `netcat` - provides the [`nc`](http://manpages.ubuntu.com/manpages/focal/en/man1/nc.1.html) utility fthat can open TCP connections, send UDP packets, listen on arbitrary
     TCP and UDP ports, do port scanning, and deal with both IPv4 and IPv6.
* `LDAP Utils` - provides a set of utilities for working with [LDAP](https://en.wikipedia.org/wiki/Lightweight_Directory_Access_Protocol) services:
    * [`ldapadd`](http://manpages.ubuntu.com/manpages/focal/en/man1/ldapadd.1.html) - add an entry to an LDAP directory.
    * [`ldapcompare`](http://manpages.ubuntu.com/manpages/focal/en/man1/ldapcompare.1.html) - compare an entry in an LDAP directory.
    * [`ldapdelete`](http://manpages.ubuntu.com/manpages/focal/en/man1/ldapdelete.1.html) - delete an entry from an LDAP directory.
    * [`ldapexop`](http://manpages.ubuntu.com/manpages/focal/en/man1/ldapexop.1.html) - perform an extended operation on an LDAP directory.
    * [`ldapmodify`](http://manpages.ubuntu.com/manpages/focal/en/man1/ldapmodify.1.html) - modify an entry in an LDAP directory.
    * [`ldapmodrdn`](http://manpages.ubuntu.com/manpages/focal/en/man1/ldapmodrdn.1.html) - modify the RDN of an entry in an LDAP directory.
    * [`ldapsearch`](http://manpages.ubuntu.com/manpages/focal/en/man1/ldapsearch.1.html) - search an LDAP directory.
    * [`ldapurl`](http://manpages.ubuntu.com/manpages/focal/en/man1/ldapurl.1.html) - parse and format LDAP URLs.
    * [`ldappasswd`](http://manpages.ubuntu.com/manpages/focal/en/man1/ldappasswd.1.html) - change a user's password in an LDAP directory.
    * [`ldapwhoami`](http://manpages.ubuntu.com/manpages/focal/en/man1/ldapwhoami.1.html) - print the current identity to standard output.
* `SNMP` - provides a set of tools for doing [SNMP](https://en.wikipedia.org/wiki/Simple_Network_Management_Protocol) management. These include:
    * [`snmpget`](https://manpages.ubuntu.com/manpages/focal/man1/snmpget.1.html) - an SNMP application that uses the SNMP GET request to query for information on a network entity. 
    * [`snmpgetnext`](https://manpages.ubuntu.com/manpages/focal/man1/snmpgetnext.1.html) - an SNMP application that uses the SNMP GETNEXT request to query for information on a network entity.
    * [`snmpwalk`](https://manpages.ubuntu.com/manpages/focal/man1/snmpwalk.1.html) - an SNMP application that uses SNMP GETNEXT requests to query a network entity for a tree of information.
    * [`snmpbulkget`](https://manpages.ubuntu.com/manpages/focal/man1/snmpbulkget.1.html) - is an SNMP application that uses the SNMP GETBULK request to query a network entity efficiently for information.
    * [`snmpbulkwalk`](https://manpages.ubuntu.com/manpages/focal/man1/snmpbulkwalk.1.html) - is an SNMP application that uses SNMP GETBULK requests to query a network entity efficiently for a tree of information.
    * [`snmpset`](https://manpages.ubuntu.com/manpages/focal/man1/snmpset.1.html) - is an SNMP application that uses the SNMP SET request to set information on a network entity.
    * [`snmptrap`](https://manpages.ubuntu.com/manpages/focal/man1/snmptrap.1.html) - is an SNMP application that uses the SNMP TRAP operation to send information to a network manager.
* `vim` - provides the [`vim`](http://manpages.ubuntu.com/manpages/focal/en/man1/vim.1.html) - [Vi IMproved editor](https://en.wikipedia.org/wiki/Vim_(text_editor)).
* `nano` - provides the [`nano`](http://manpages.ubuntu.com/manpages/focal/en/man1/nano.1.html) - a small, friendly text editor.
* `less` - provides the [`less`](http://manpages.ubuntu.com/manpages/focal/en/man1/less.1.html) utility.
* `Python 3` - the [Python language interpreter](https://www.python.org/) and the [`pip`](https://pypi.org/project/pip/) package manager.
    * `NetIfaces` - is a Python module to query the network interfaces. For more information, see the [NetIfaces website](https://pypi.org/project/netifaces/).
    * `PySNMP` - a cross-platform, pure-Python SNMP engine implementation. For more information, see the [PySNMP website](https://pypi.org/project/pysnmp/).
    * `Scapy` - is a powerful interactive packet manipulation tool, packet generator, network scanner, network discovery, packet sniffer, etc. For more information, see the [Scapy website](https://scapy.net) and the [Scapy documentation](https://scapy.readthedocs.io/en/latest/).
## Using the image

If you want to use this image, just pull it with
```
docker pull ghcr.io/maxotta/kiv-psi-base-docker:latest
```

## Building images based on this base

Just use the `FROM <image>` clause to build a new image based on this image. If you want, for example, create a new image that adds the `build-essential` package to the container, do it as follows:

```
FROM ghcr.io/maxotta/kiv-psi-base-docker:latest

RUN apt-get -y install build-essential
```

## Creating a GNS3 appliance based on this image

In order to add a new host appliance based on this image, import the [psi-base-node.gns3a](psi-base-node.gns3a) appliance descriptor file into GNS3.

---

This work is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg
