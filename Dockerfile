FROM ubuntu:focal
LABEL maintainer="maxmilio@kiv.zcu.cz" \
      org.opencontainers.image.source="https://github.com/maxotta/kiv-psi-docker"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get autoremove && apt-get autoclean
RUN apt-get -y install apt-utils ; \
    apt-get -y install net-tools ; \
    apt-get -y install iproute2 ; \
    apt-get -y install iputils-ping ; \
    apt-get -y install traceroute ; \
    apt-get -y install dnsutils ; \
    apt-get -y install ipcalc ; \
    apt-get -y install snmp ; \
    apt-get -y install snmp-mibs-downloader ; \
    sed -e '/#/! s/^#*/#/g' -i /etc/snmp/snmp.conf ; \
    apt-get -y install ldap-utils ; \
    apt-get -y install nmap ; \
    apt-get -y install tcpdump ; \
    apt-get -y install curl ; \
    apt-get -y install netcat ;

RUN apt-get -y install mc ; \
    apt-get -y install vim ; \
    apt-get -y install nano ;\
    apt-get -y install less ;

RUN apt-get -y install git ; \
    apt-get -y install python3 ; \
    apt-get -y install python3-pip ; \
    apt-get -y install scapy

RUN pip3 install pysnmp ; \
    pip3 uninstall pyasn1 -y ; \
    pip3 install pyasn1==0.4.8 ; \
    pip3 install netifaces ;

CMD [ "sh", "-c", "while :; do cd; bash -i; echo '==> NOPE ! Exiting the shell would also stop the Docker container! Please close the terminal window instead.'; done" ]
