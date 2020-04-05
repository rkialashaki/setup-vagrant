FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y wget gnupg2 && \
    echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian bionic contrib" >> /etc/apt/sources.list && \
    wget -q "https://www.virtualbox.org/download/oracle_vbox_2016.asc" -O- | apt-key add - && \
    apt-get update && \
    apt-get install -y vagrant python3 python3-pip dkms build-essential linux-headers-generic virtualbox-6.1 && \
    /sbin/vboxconfig && \
    pip3 install ansible

COPY entrypoint.sh /usr/src/entrypoint.sh

ENTRYPOINT ["/usr/src/entrypoint.sh"]
