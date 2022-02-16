FROM ubuntu:focal
LABEL maintainer="maxmilio@kiv.zcu.cz" \
      org.opencontainers.image.source="https://github.com/maxotta/kiv-psi-docker"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get autoremove && apt-get autoclean
RUN apt-get -y install apt-utils ; \
    apt-get -y install mc ; \
    apt-get -y install net-tools ; \
    apt-get -y install iproute2 ; \
    apt-get -y install iputils-ping ; \
    apt-get -y install traceroute ; \
    apt-get -y install dnsutils ; \
    apt-get -y install ipcalc ; \
    apt-get -y install vim ; \
    apt-get -y install less

CMD [ "sh", "-c", "while :; do cd; bash -i; echo '==> NOPE ! Exiting the shell would also stop the Docker container! Please close the terminal window instead.'; done" ]
